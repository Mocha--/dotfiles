#!/bin/bash

##### Changing Defaults #####
# We now change some default values, which are applied to all further items.
# For a full list of all available item properties see:
# https://felixkratz.github.io/SketchyBar/config/items

default=(
  # icon defaults
  icon.font="$DEFAULT_FONT_FAMILY:$FONT_WEIGHT_BOLD:$ICON_FONT_SIZE"
  icon.padding_left=$ITEM_ICON_PADDING_LEFT
  icon.padding_right=$ITEM_ICON_PADDING_RIGHT
  icon.color=$ITEM_ICON_COLOR

  # label defaults
  label.font="$DEFAULT_FONT_FAMILY:$FONT_WEIGHT_BOLD:$LABEL_FONT_SIZE"
  label.padding_left=$ITEM_LABEL_PADDING_LEFT
  label.padding_right=$ITEM_LABEL_PADDING_RIGHT
  label.align=center
  label.color=$ITEM_LABEL_COLOR

  # background defaults
  background.corner_radius=$ITEM_BACKGROUND_CORNER_RADIUS
  background.height=$ITEM_BACKGROUND_HEIGHT
  background.color=$ITEM_BACKGROUND_COLOR
  background.padding_left=$ITEM_BACKGROUND_PADDING_INLINE
  background.padding_right=$ITEM_BACKGROUND_PADDING_INLINE
)

sketchybar --default "${default[@]}"
