#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/hyprland-overrides/overrides-helper.sh" \
  "bindings.conf" \
  "$SCRIPT_DIR/hyprland-overrides/configs/bindings-overrides.conf"

"$SCRIPT_DIR/hyprland-overrides/overrides-helper.sh" \
  "looknfeel.conf" \
  "$SCRIPT_DIR/hyprland-overrides/configs/looknfeel-overrides.conf"
