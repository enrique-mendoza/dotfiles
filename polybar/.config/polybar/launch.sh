#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Manage multiple monitors
for m in $(polybar --list-monitors | cut -d":" -f1); do
    # MONITOR=$m polybar --reload main &

    if [ "$m" = "eDP-1" ]; then
        MONITOR=$m polybar --reload main &
    else
        MONITOR=$m polybar --reload external &
    fi
done
