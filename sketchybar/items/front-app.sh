#!/bin/bash

sketchybar --add item front_app left \
           --set front_app icon.font="$APP_ICON_FONT_FAMILY:$FONT_WEIGHT_REGULAR:$ICON_FONT_SIZE" \
                 script="$PLUGINS_DIR/front-app.sh" \
           --subscribe front_app front_app_switched
