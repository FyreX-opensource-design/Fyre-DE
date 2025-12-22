#!/bin/bash

#add yay
sudo pacman -Sy --needed --noconfirm git base-devel
cd ~ && git clone https://aur.archlinux.org/yay.git
cd ~/yay && makepkg -si
cd ~ && rm -rf ~/yay

cd ~ && git clone https://github.com/FyreX-opensource-design/labwc
cd ~/labwc && meson setup build/ && meson compile -C build/
cd ~ && rm -rf ~/yay

cd ~ && git clone https://github.com/FyreX-opensource-design/D-Shell-Abstracction
cd ./D-Shell-Abstracction && ./install.sh && cd ..
rm -rf ~/D-Shell-Abstracction

./install-common.sh

#desktop
sudo pacman -S --needed --noconfirm swaybg waybar pcmanfm-qt
#screenshotting
sudo pacman -S --needed --noconfirm grim slurp
#device control
sudo pacman -S --needed --noconfirm playerctl brightnessctl
#sound
sudo pacman -S --needed --noconfirm wireplumber pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber
#idle and lock
sudo pacman -S --needed --noconfirm swayidle gtklock gtklock-powerbar-module
#XDG
sudo pacman -S --needed --noconfirm xdg-utils xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr

yay -S --noconfirm dotool
yay -S --noconfirm wlrctl
yay -S --coconfirm shikane
