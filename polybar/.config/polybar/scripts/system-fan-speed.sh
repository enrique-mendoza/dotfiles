#!/bin/sh

fan_speed_1=$(sensors 2>/dev/null | awk '/fan1:/ {print $2; exit}')
fan_speed_2=$(sensors 2>/dev/null | awk '/fan2:/ {print $2; exit}')

if [ -n "$fan_speed_1" ] && [ -n "$fan_speed_2" ]; then
    speed_round_1=$(printf "%.1f" "$(echo "$fan_speed_1 / 1000" | bc -l)")
    speed_round_2=$(printf "%.1f" "$(echo "$fan_speed_2 / 1000" | bc -l)")
    echo "  $speed_round_1 / $speed_round_2 (kRPM)"
else
    echo " 0 (kRPM)"
fi
