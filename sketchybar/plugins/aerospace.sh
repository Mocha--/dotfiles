#!/bin/bash

source $CONFIG_DIR/variables.sh

sketchybar --set $NAME label="$($UTILS_DIR/get-space-label.sh $1)"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.color="$FOCUSED_WORKSPACE_COLOR"
else
  sketchybar --set $NAME background.color="$UNFOCUSED_WORKSPACE_COLOR"
fi
