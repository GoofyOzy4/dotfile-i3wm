#!/bin/bash

# - Get current volume level
current_volume=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | awk '{print $5}')

# - Commands
inc="pactl set-sink-volume @DEFAULT_SINK@ +5%"
dec="pactl set-sink-volume @DEFAULT_SINK@ -5%"
mute="pactl set-sink-mute @DEFAULT_SINK@ toggle"

# - Options
chosen=$(echo -e "Current Volume : $current_volume\n ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~\n+    +5 Volume\n-    -5% Volume\n       Mute" | rofi -dmenu -i -theme ~/.config/polybar/scripts/shared/volume.rasi -p "Контроль звука")

# - Execute when choosed
case "$chosen" in
    "+    +5 Volume")
        $inc
	sleep 0.2
	bash ~/.config/polybar/scripts/volume.sh
        ;;
    "-    -5% Volume")
        $dec
	sleep 0.1
	bash ~/.config/polybar/scripts/volume.sh
        ;;
    "       Mute")
        $mute
	sleep 0.1
	bash ~/.config/polybar/scripts/volume.sh
        ;;
    *)
        ;;
esac
