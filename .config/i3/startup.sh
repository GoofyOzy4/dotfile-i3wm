#!/bin/sh
wal --saturate 0.33 -i $HOME/Wallpaper/Wallpaper.png
sleep 0.3
dunst &
polybar
