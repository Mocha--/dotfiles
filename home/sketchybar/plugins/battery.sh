#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

if [[ "$CHARGING" != "" ]]; then
  ICON=""  # Single icon for charging state
else
  # Icons for battery state (not charging)
  case "${PERCENTAGE}" in
    [7-9][0-9]|100) ICON="󱊣"  # 70-100
    ;;
    [3-6][0-9]) ICON="󱊢"      # 30-69
    ;;
    *) ICON="󱊡"               # 0-29
  esac
fi

sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
