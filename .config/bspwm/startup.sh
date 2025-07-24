#!/bin/sh
wal -i $HOME/Wallpaper/Wallpaper.png --saturate 0.05
sleep 0.5
dunst &
sleep 1
polybar &
