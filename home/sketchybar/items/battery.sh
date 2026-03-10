#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                 script="$PLUGINS_DIR/battery.sh" \
                 label.width=$ITEM_LABEL_PERCENTAGE_DISPLAY_WIDTH \
           --subscribe battery system_woke power_source_change
