#!/bin/bash

sketchybar --add item clock right \
           --set clock update_freq=10 \
                 icon= \
                 script="$PLUGINS_DIR/clock.sh"
