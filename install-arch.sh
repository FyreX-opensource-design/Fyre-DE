#!/bin/bash

#add yay
suco pacman -Syy --needed git base-devel
cd ~ && git clone https://aur.archlinux.org/yay.git
cd ~/yay && makepkg -si
rm -rf ~/yay

#desktop
sudo pacman -Syy --needed labwc swaybg nwg-bar
#screenshotting
sudo pacman -Syy --needed grim slurp
#device control
sudo pacman -Syy --needed playerctl brightnessctl
yay -S --needed wlrctl
#sound
sudo pacman -Syy --needed wpctl pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber
#wallpaper script
sudo pacman -Syy --needed python3-venv python3-pip pyenv
#idle and lock
sudo pacman -Syy --needed swayidle gtklock
