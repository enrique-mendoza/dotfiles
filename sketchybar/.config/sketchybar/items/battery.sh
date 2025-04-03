#!/bin/sh

sketchybar --add item battery right                             \
           --set battery update_freq=120                        \
                         script="$PLUGIN_DIR/battery.sh"        \
                         label.padding_right=0                  \
                         label.padding_left=3                   \
                         padding_right=10                        \
                         padding_left=0                         \
           --subscribe battery system_woke power_source_change
