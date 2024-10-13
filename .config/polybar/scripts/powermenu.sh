#!/bin/bash

# - Options
options="     Shutdown\n     Reboot\n     Logout"

# - Show rofi
chosen=$(echo -e "$options" | rofi -dmenu -theme ~/.config/polybar/scripts/shared/powermenu.rasi)

case $chosen in
    "     Shutdown")
        systemctl poweroff
	;;
    "     Reboot")
        systemctl reboot
        ;;
    "     Logout")
        i3-msg exit
        ;;
esac
