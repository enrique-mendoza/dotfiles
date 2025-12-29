#!/usr/bin/env bash

# Count physically connected displays
connected_displays=$(xrandr | grep " connected" | wc -l)

if [ "$connected_displays" -gt 1 ]; then
    echo "Multiple monitors detected. Running xrandr..."
    xrandr \
        --output eDP-1 --primary --mode 3072x1920 --rate 120 \
        --output HDMI-1 --mode 2560x1440 --rate 120 --above eDP-1
else
    echo "Single monitor detected. No xrandr changes needed."
    xrandr --output eDP-1 --primary --mode 3072x1920 --rate 120 \
           --output HDMI-1 --off
fi
