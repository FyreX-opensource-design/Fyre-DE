#!/bin/bash
cp ./config ~/.config

cd ~/ && git clone https://github.com/Nmoleo64/gtklock-powerbar-module
cd ~/gtklock-powerbar-module && ninja -C build
cd ~/gtklock-powerbar-module && sudo cp ./build/powerbar-module.so /usr/lib/gtklock
rm -rf ~/gtklock-powerbar-module
#setup wallpaper
cp ./wallpaper ~/.wallpaper
cd ~/.wallpaper && pyenv install 3.11.7 && pyenv shell 3.11.7 && \ 
python3 -m venv .wallpaper && \ 
./.wallpaper/bin/pip3 install -r requirements.txt && \
pyenv shell --unset
