#!/usr/bin/bash

WALLPAPER_DIR="$HOME/Wallpaper"
THUMB_DIR="$HOME/.cache/wall_thumbs"
IMAGE_PICKER_CONFIG="$HOME/.config/polybar/scripts/shared/wallpaper.rasi"

mkdir -p "$THUMB_DIR"

mapfile -t FILES < <(
  find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \)
)

declare -A UNIQUE
for FILE in "${FILES[@]}"; do
  NAME="$(basename "$FILE")"
  [[ -n "${UNIQUE[$NAME]}" ]] && continue
  UNIQUE[$NAME]="$FILE"
done

ROFI_MENU=""
TOTAL=${#UNIQUE[@]}
COUNT=0

for NAME in "${!UNIQUE[@]}"; do
  FILE="${UNIQUE[$NAME]}"

  THUMB="$THUMB_DIR/$NAME.png"
  if [[ ! -f "$THUMB" ]]; then
    convert "$FILE" -thumbnail 128x128^ -gravity center -extent 128x128 "$THUMB"
  fi

  COUNT=$((COUNT+1))
  if [[ $COUNT -lt $TOTAL ]]; then
    ROFI_MENU+="$NAME\x00icon\x1f$THUMB\n"
  else
    ROFI_MENU+="$NAME\x00icon\x1f$THUMB"
  fi
done

SELECTED_INDEX=$(echo -e "$ROFI_MENU" | rofi -dmenu \
  -p "Select Wallpaper:" \
  -theme "$IMAGE_PICKER_CONFIG" \
  -show-icons \
  -format 'i')

[[ -z "$SELECTED_INDEX" ]] && exit 0

SELECTED_PATH=$(printf "%s\n" "${UNIQUE[@]}" | sed -n "$((SELECTED_INDEX+1))p")

cp "$SELECTED_PATH" "$HOME/.config/bspwm/wallpaper.img"
wal -i "$HOME/.config/bspwm/wallpaper.img" -s --saturate 0.03
