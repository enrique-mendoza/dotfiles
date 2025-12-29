setup_hyprland_overrides() {
    local overrides_target="$1"
    local overrides_config="$2"

    local HYPRLAND_CONFIG="$HOME/.config/hypr/hyprland.conf"
    local HYPRLAND_TARGET_CONFIG="$HOME/.config/hypr/$overrides_target"
    local SOURCE_LINE="source = $overrides_config"

    # Validate parameter
    if [ -z "$overrides_target" ] || [ -z "$overrides_config" ]; then
        echo "Usage: setup_hyprland_overrides <target.conf> <overrides.conf>"
        exit 1
    fi

    # Check if hyprland config exists
    if [ ! -f "$HYPRLAND_CONFIG" ]; then
        echo "Hyprland config not found at $HYPRLAND_CONFIG"
        echo "Please install hyprland first"
        return 1
    fi

    # Check if overrides config exists
    if [ ! -f "$overrides_config" ]; then
        echo "Overrides config not found at $overrides_config"
        return 1
    fi

    # Ensure target .conf exists
    if [ ! -f "$HYPRLAND_TARGET_CONFIG" ]; then
        echo "Creating $HYPRLAND_TARGET_CONFIG"
        touch "$HYPRLAND_TARGET_CONFIG"
    fi

    # Check if source line already exists
    if grep -Fxq "$SOURCE_LINE" "$HYPRLAND_TARGET_CONFIG"; then
        echo "Source line already exists in $HYPRLAND_TARGET_CONFIG"
    else
        echo "Adding source line to $HYPRLAND_TARGET_CONFIG"
        {
            echo ""
            echo "$SOURCE_LINE"
        } >> "$HYPRLAND_TARGET_CONFIG"
        echo "Source line added successfully"
    fi

    echo "Hyprland overrides setup complete!"
}

setup_hyprland_overrides "$@"
