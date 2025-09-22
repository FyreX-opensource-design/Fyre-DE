#!/bin/bash

#add yay
suco pacman -Sy --needed --noconfirm git base-devel
cd ~ && git clone https://aur.archlinux.org/yay.git
cd ~/yay && makepkg -si
rm -rf ~/yay

#desktop
sudo pacman -Sy --needed --noconfirm labwc swaybg waybar pcmanfm-qt
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
