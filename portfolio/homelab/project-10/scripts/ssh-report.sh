#!/bin/bash
# Reconstructed from the working script shown in the 15 November 2026 terminal screenshots.
# Basic educational detector; not production-grade intrusion detection.

echo "================================"
echo "       SSH SECURITY REPORT"
echo "================================"
echo "Date: $(date)"
echo

journalctl -u ssh --since today --no-pager | awk '
/Accepted password/ {password++}
/Accepted publickey/ {key++}
/Failed password/ {failed++}
/Connection reset by authenticating user/ {reset++}

END {
    print "Successful password logins:", password+0
    print "Successful SSH key logins:", key+0
    print "Failed password attempts:", failed+0
    print "Authentication connection resets:", reset+0
}'

echo
echo "Report complete."
echo
echo

echo "SECURITY ASSESSMENT"
echo "-------------------"

recent_resets=$(journalctl -u ssh \
    --since "1 minute ago" --no-pager |
    grep -c "Connection reset by authenticating user" || true)

echo "Connection resets in last 60 seconds: $recent_resets"

STATE_FILE="/run/ssh-monitor-last-alert"
ALERT_LOG="/var/log/ssh-monitor-alerts.log"
COOLDOWN=120
now=$(date +%s)

last_alert=0
if [ -f "$STATE_FILE" ]; then
    read -r last_alert < "$STATE_FILE"
fi

if ! [[ "$last_alert" =~ ^[0-9]+$ ]]; then
    last_alert=0
fi

if [ "$recent_resets" -ge 5 ]; then
    if (( now - last_alert >= COOLDOWN )); then
        echo "WARNING: Unusual SSH activity!"
        echo "$(date -Is) | WARNING: $recent_resets resets" >> "$ALERT_LOG"
        echo "$now" > "$STATE_FILE"
    else
        echo "Duplicate warning suppressed."
    fi
else
    echo "No high-frequency alert triggered."
fi
