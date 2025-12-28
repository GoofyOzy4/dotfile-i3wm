#!/bin/sh
wal -i "$HOME/.config/bspwm/wallpaper.img" --saturate 0.03
sleep 0.3
dunst &
sleep 0.5
polybar &
