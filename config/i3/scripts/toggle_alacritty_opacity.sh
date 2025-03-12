#!/bin/bash

# Path to your alacritty configuration file
CONFIG_FILE="$HOME/.config/alacritty/alacritty.toml"

# Current opacity value
CURRENT_OPACITY=$(grep -E 'opacity = [0-9\.]+' "$CONFIG_FILE" | awk '{print $3}')

# New opacity value
if [[ "$CURRENT_OPACITY" == "1" ]]; then
    NEW_OPACITY="0.85"
else
    NEW_OPACITY="1"
fi

# Update the opacity value in the configuration file
sed -i "s/opacity = $CURRENT_OPACITY/opacity = $NEW_OPACITY/" "$CONFIG_FILE"

echo "Opacity toggled to $NEW_OPACITY"

