#!/bin/sh

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

sketchybar --add event input_change 'AppleSelectedInputSourcesChangedNotification' \
    --add item input right                                                         \
    --set input script="$PLUGIN_DIR/keyboard.sh"                                   \
          icon=􀇳                                                                   \
          icon.font="sketchybar-app-font:Regular:13.0"                             \
          label.padding_right=0                                                    \
          label.padding_left=3                                                     \
          padding_right=3                                                          \
          padding_left=0                                                           \
    --subscribe input input_change 
