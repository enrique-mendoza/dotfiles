#!/bin/bash
# ~/scripts/standard-mode.sh

CONFIG_FILE="$HOME/.config/hyprdynamicmonitors/config.toml"

current_mode=$(grep -E '^mode\s*=' "$CONFIG_FILE" | sed 's/.*"\(.*\)"/\1/')

if [[ "$current_mode" == "standard" ]]; then
  sed -i 's/mode = ".*"/mode = "external"/' "$CONFIG_FILE"
  notify-send "󰍺  Applying external monitor settings..."
else
  sed -i 's/mode = ".*"/mode = "standard"/' "$CONFIG_FILE"
  notify-send "󰍺  Applying workspace settings..."
fi
