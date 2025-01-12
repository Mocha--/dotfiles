#!/bin/bash

#### listening to aerospace workspace change and add aerospace workspaces
sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item space.$sid left \
               --set space.$sid \
                     icon="$sid" \
                     label.font="$APP_ICON_FONT_FAMILY:$FONT_WEIGHT_REGULAR:$ICON_FONT_SIZE" \
                     label="$($UTILS_DIR/get-space-label.sh $sid)" \
                     click_script="aerospace workspace $sid" \
                     script="$PLUGINS_DIR/aerospace.sh $sid" \
               --subscribe space.$sid aerospace_workspace_change
done
