#!/bin/bash

source "$CONFIG_DIR/variables.sh"

##### Bar Appearance #####
# Configuring the general appearance of the bar.
# These are only some of the options available. For all options see:
# https://felixkratz.github.io/SketchyBar/config/bar
# If you are looking for other colors, see the color picker:
# https://felixkratz.github.io/SketchyBar/config/tricks#color-picker
sketchybar --bar position=top \
                 height=$BAR_HEIGHT \
                 blur_radius=8 \
                 color=0x40000000 \
                 padding_left=$BAR_PADDING_INLINE \
                 padding_right=$BAR_PADDING_INLINE