#!/bin/bash

# This script is used to get the label for an aerospace workspace
# The label is a list of icons for the applications running in the workspace
# This script takes the workspace id as an argument and returns the label

source $CONFIG_DIR/variables.sh
source $UTILS_DIR/icon_map.sh

workspace_id="$1"  # Assign the first argument to sid variable

window_data=$(aerospace list-windows --all --json --format "%{app-name}%{workspace}")

label=""

# Change how we process apps to handle spaces in names
apps=$(echo "$window_data" | jq -r --arg ws "$workspace_id" '
    [.[] | select(.workspace == $ws) | ."app-name"] | join("\n")'
)

# Use while read instead of for to properly handle spaces
while IFS= read -r app; do
    if [ -n "$app" ]; then  # Only process non-empty lines
        icon=$(__icon_map "$app")
        # Only add the icon if it's not empty
        if [ -n "$icon" ]; then
          label+="$icon"
        fi
    fi
done <<< "$apps"

# If label is empty, return hyphens, otherwise return the label
if [ -z "$label" ]; then
    echo "---"
else
    echo "$label"
fi
