#!/bin/bash

MAX_SPEED_MB=10
BAR_LENGTH=4

current_speed_mb=$(awk 'BEGIN{srand(); print 0.1 + rand() * 5}')

filled_blocks=$(awk -v cur="$current_speed_mb" -v max="$MAX_SPEED_MB" -v len="$BAR_LENGTH" \
'BEGIN {
    if (max <= 0) max=1;
    pct = (cur / max);
    if (pct > 1) pct = 1;
    print int(pct * len); 
}')

bar=""
for ((i=1; i<=BAR_LENGTH; i++)); do
    if [ "$i" -le "$filled_blocks" ]; then
        bar="${bar}█"
    else
        bar="${bar}░"
    fi
done

printf '{"text": "\n%s", "tooltip": "Speed: %.1f MB/s", "class": "network-speed"}\n' "$bar" "$current_speed_mb"
