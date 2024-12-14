#!/bin/bash

# - Get current volume level and show info message

message=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | awk '{print $5}')

# - Commands
inc="pactl set-sink-volume @DEFAULT_SINK@ +5%"
dec="pactl set-sink-volume @DEFAULT_SINK@ -5%"
mute="pactl set-sink-mute @DEFAULT_SINK@ toggle"

# - Options
chosen=$(echo -e "+ 5%\n- 5%\n= Mute toggle" | rofi -dmenu -i -theme ~/.config/polybar/scripts/shared/control.rasi -mesg "Current Volume : $message")

# - Execute when choosed
case "$chosen" in
    "+ 5%")
        $inc
	sleep 0.2
	bash ~/.config/polybar/scripts/volume.sh
        ;;
    "- 5%")
        $dec
	sleep 0.1
	bash ~/.config/polybar/scripts/volume.sh
        ;;
    "= Mute toggle")
        $mute
	sleep 0.1
	bash ~/.config/polybar/scripts/volume.sh
        ;;
    *)
        ;;
esac
