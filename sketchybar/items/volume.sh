#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGINS_DIR/volume.sh" \
                 label.width=$ITEM_LABEL_PERCENTAGE_DISPLAY_WIDTH \
           --subscribe volume volume_change \
