#!/bin/bash

sketchybar --add item calendar right \
           --set calendar update_freq=10 \
                 icon= \
                 script="$PLUGINS_DIR/calendar.sh"
