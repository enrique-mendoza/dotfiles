#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch bar1 and bar2
# desktop=$(echo $DESKTOP_SESSION)

# case $desktop in
#     hypr|/usr/share/xsessions/hypr)
#       # Dual screen is not possible in Hypr
#       for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#         # MONITOR=$m polybar primary 2>&1 | tee -a /tmp/polybar1.log &
#         MONITOR=$m polybar --reload primary & # -c ~/.config/polybar/primary.config
#         MONITOR=$m polybar --reload secondary & # -c ~/.config/polybar/secondary.config
#       done
# esac

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload primary & 
    MONITOR=$m polybar --reload secondary & 
done

echo "Bars launched..."

