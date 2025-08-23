#!/bin/bash

#add yay
suco pacman -Sy --needed --noconfirm git base-devel
cd ~ && git clone https://aur.archlinux.org/yay.git
cd ~/yay && makepkg -si
rm -rf ~/yay

#desktop
sudo pacman -Sy --needed --noconfirm labwc swaybg nwg-bar
#screenshotting
sudo pacman -Sy --needed --noconfirm grim slurp
#device control
sudo pacman -Sy --needed --noconfirm playerctl brightnessctl
yay -S --needed --noconfirm wlrctl
#sound
sudo pacman -Sy --needed --noconfirm wireplumber pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber
#wallpaper script
sudo pacman -Sy --needed --noconfirm python3-venv python3-pip pyenv
#idle and lock
sudo pacman -Sy --needed --noconfirm swayidle gtklock
