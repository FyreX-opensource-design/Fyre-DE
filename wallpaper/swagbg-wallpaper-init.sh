#!/bin/bash
if [ -f /usr/share/bing-wallpaper/wallpaper.png ]; then
    rm /usr/share/bing-wallpaper/wallpaper.png
fi
source .venv/bin/activate && python custom_bingwallpaper.py /usr/share/bing-wallpaper/wallpaper.png

swaybg -i /usr/share/bing-wallpaper/wallpaper.png -m fill