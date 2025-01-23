#!/bin/bash

# - Options
options="\n\n\n"

# - Messages
message="Power Menu   ✿"

# - Show rofi
chosen=$(echo -e "$options" | rofi -dmenu -theme ~/.config/polybar/scripts/shared/powermenu.rasi -mesg "$message")

case $chosen in
    "")
        systemctl poweroff
	;;
    "")
        systemctl reboot
        ;;
    "")
        i3-msg exit
        ;;
    "")
	i3-msg restart
	;;
esac
