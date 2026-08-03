#!/usr/bin/env bash
# spam f with a 50-150ms delay

PIDFILE="/tmp/ihatedialogue.pid"
FKEY=33

if [[ -f "$PIDFILE" ]] && kill -0 "$(cat "$PIDFILE")" 2>/dev/null; then
    kill "$(cat "$PIDFILE")"
    rm -f "$PIDFILE"
    exit 0
fi

echo $$ > "$PIDFILE"
trap 'rm -f "$PIDFILE"; exit 0' SIGINT SIGTERM EXIT

while true; do
    ydotool key ${FKEY}:1 ${FKEY}:0
    delay_ms=$(( (RANDOM % 101) + 50 ))
    sleep "$(awk "BEGIN { printf \"%.3f\", $delay_ms/1000 }")"
done
