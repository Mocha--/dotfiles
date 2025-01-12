#!/bin/bash

source $CONFIG_DIR/variables.sh

sketchybar --set $NAME label="$($UTILS_DIR/get-space-label.sh $1)"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.color="0xffac4d39"
else
  sketchybar --set $NAME background.color=0xff2f3e46
fi
