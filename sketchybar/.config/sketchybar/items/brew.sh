#!/bin/sh

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

sketchybar --add event brew_update                 \
           --add item brew right                   \
           --set brew script="$PLUGIN_DIR/brew.sh" \
                      icon=􀐛                       \
                      label=?                      \
                      label.padding_right=0        \
                      label.padding_left=3         \
                      padding_right=5              \
                      padding_left=0               \
          --subscribe brew brew_update
