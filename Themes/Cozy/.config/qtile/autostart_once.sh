#!/bin/bash

# Apply wallpaper using wal
wal -b 282738 -i ~/Wallpaper/Aesthetic2.png &&

# Start picom
picom --config ~/.config/picom/picom.conf &

dunst &&

flameshot &&

spotify-launcher & easyeffects &&

discord &&

steam &

