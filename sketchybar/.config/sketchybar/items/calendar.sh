#!/bin/sh

sketchybar --add   item          calendar.time right                   \
           --set   calendar.time update_freq=15                        \
                                 icon.drawing=off                      \
                                 script="$PLUGIN_DIR/time.sh"          \
                                                                       \
           --add   item          calendar.date right                   \
           --set   calendar.date update_freq=15                        \
                                 icon.drawing=off                      \
                                 background.color=$ACCENT_COLOR        \
                                 icon.color=$BAR_COLOR                 \
                                 label.color=$BAR_COLOR                \
                                 label.padding_right=5                 \
                                 padding_right=5                       \
                                 padding_left=5                        \
                                 script="$PLUGIN_DIR/date.sh"          \
                                                                       \
           --add   bracket       calendar                              \
                                 calendar.time                         \
                                 calendar.date                         \
