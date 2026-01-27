#!/bin/bash

CONFIG_FILE="$HOME/.config/hyprdynamicmonitors/config.toml"
current_mode=$(grep -E '^mode\s*=' "$CONFIG_FILE" | sed 's/.*"\(.*\)"/\1/')

if [[ "$current_mode" != "workspace-left" ]]; then
  sed -i 's/mode = ".*"/mode = "workspace-left"/' "$CONFIG_FILE"
  notify-send "󰍺  Moving laptop screen to left..."
fi
