#!/bin/bash

CONFIG_FILE="$HOME/.config/hyprdynamicmonitors/config.toml"
current_mode=$(grep -E '^mode\s*=' "$CONFIG_FILE" | sed 's/.*"\(.*\)"/\1/')

if [[ "$current_mode" != "workspace-focus" ]]; then
  sed -i 's/mode = ".*"/mode = "workspace-focus"/' "$CONFIG_FILE"
  notify-send "󰍺  Disabling laptop screen..."
fi
