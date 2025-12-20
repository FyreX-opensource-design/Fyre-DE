#!/bin/bash

#add yay
sudo pacman -Sy --needed --noconfirm git base-devel
cd ~ && git clone https://aur.archlinux.org/yay.git
cd ~/yay && makepkg -si
cd ~ && rm -rf ~/yay

cd ~ && git clone https://github.com/FyreX-opensource-design/labwc
cd ~/labwc && makepkg -si
cd ~ && rm -rf ~/yay

cd ~ && git clone https://github.com/FyreX-opensource-design/D-Shell-Abstracction
cd ./D-Shell-Abstracction && ./install.sh && cd ..
rm -rf ~/D-Shell-Abstracction

./install-common.sh

#desktop
sudo pacman -Sy --needed --noconfirm swaybg waybar pcmanfm-qt
#screenshotting
sudo pacman -Sy --needed --noconfirm grim slurp
#device control
sudo pacman -Sy --needed --noconfirm playerctl brightnessctl
#sound
sudo pacman -Sy --needed --noconfirm wireplumber pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber
#idle and lock
sudo pacman -Sy --needed --noconfirm swayidle gtklock gtklock-powerbar-module
#XDG
sudo pacman -Sy --needed --noconfirm xdg-utils xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr

yay -S --noconfirm dotool
yay -S --noconfirm wlrctl
