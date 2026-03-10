#!/bin/sh

sketchybar --add item cpu right \
           --set cpu update_freq=2 \
                 script="$PLUGINS_DIR/cpu.sh" \
                 icon="" \
                 label.width=$ITEM_LABEL_PERCENTAGE_DISPLAY_WIDTH
