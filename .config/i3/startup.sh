#!/bin/sh
wal --saturate 0.33 -i $HOME/Wallpaper/Wallpaper.png
# Symlink dunst config
ln -sf ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
# Restart dunst with the new color scheme
pkill dunst
dunst &

sleep 0.3
polybar
