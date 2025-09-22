#!/bin/bash
cp ./config ~/.config
mkdir ~/.scripts
cp ./scripts ~/.scripts
#setup wallpaper
cp ./wallpaper ~/.wallpaper
python3 -m venv .wallpaper && ./.wallpaper/bin/pip3 install -r requirements.txt
