#!/bin/bash
# Simulated alert decision timing. No system logs or alert files altered.
set -euo pipefail
count=6
cooldown=120
last_alert=-120
for now in 0 60 120 180; do
    echo "Simulated time: ${now}s"
    if [ "$count" -ge 5 ]; then
        if (( now - last_alert >= cooldown )); then
            echo "WARNING: Security alert generated"
            last_alert=$now
        else
            echo "Duplicate warning suppressed"
        fi
    fi
done
