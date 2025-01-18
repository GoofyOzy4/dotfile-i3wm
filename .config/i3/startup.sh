#!/bin/sh
wal --saturate 0.33 -i $HOME/Wallpaper/Wallpaper.png
sh ~/.config/dunst/gen.sh
sleep 0.3
polybar
