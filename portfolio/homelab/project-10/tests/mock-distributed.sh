#!/bin/bash
# Synthetic demonstration only. Does not modify system SSH logs.
set -euo pipefail

tmpfile=$(mktemp)
trap 'rm -f "$tmpfile"' EXIT
for ip in 192.0.2.10 192.0.2.20 192.0.2.30 192.0.2.40; do
    for i in 1 2; do
        echo "Connection reset by authenticating user test-user $ip port 5000 [preauth]"
    done
done > "$tmpfile"

awk '
/Connection reset by authenticating user/ {
    for (i=1; i<=NF; i++) {
        if ($i=="port") {
            ip=$(i-1)
            count[ip]++
            total++
            break
        }
    }
}
END {
    print "SSH DISTRIBUTED ACTIVITY REPORT"
    for (ip in count) {
        print ip ":", count[ip], "events"
    }
    print "Total events:", total+0
    if (total >= 5) print "WARNING: High overall SSH activity!"
    for (ip in count) {
        if (count[ip] >= 5) print "WARNING: High activity from", ip
    }
}' "$tmpfile"
