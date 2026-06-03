#!/bin/bash

# ██╗███████╗██╗    ██╗███████╗ █████╗ ████████╗
# ██║██╔════╝██║    ██║██╔════╝██╔══██╗╚══██╔══╝
# ██║███████╗██║ █╗ ██║█████╗  ███████║   ██║
# ██║╚════██║██║███╗██║██╔══╝  ██╔══██║   ██║
# ██║███████║╚███╔███╔╝███████╗██║  ██║   ██║
# ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝  ╚═╝
#
# github : https://github.com/iSweat-exe/
#
# >> Install Script

set -e

# yay
pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay && makepkg -si
cd ~

# fonts
yay -S --noconfirm \
    ttf-jetbrains-mono-nerd \
    ttf-nerd-fonts-symbols \
    otf-font-awesome \
    ttf-fira-code-nerd

# wm / compositor
yay -S --noconfirm \
    hyprland \
    xdg-desktop-portal-hyprland \
    qt5-wayland \
    qt6-wayland \
    hyprlock \
    hyprshot

# shell bar / launcher / notifs / wallpaper
yay -S --noconfirm \
    quickshell \
    rofi-wayland \
    swaync \
    swww

# terminal / shell / prompt / file manager
yay -S --noconfirm \
    kitty \
    zsh \
    starship \
    yazi

# apps
yay -S --noconfirm \
    spotify-tui \
    discord \
    firefox \
    visual-studio-code-bin \
    obs-studio \
    git \
    github-cli

# dotfiles
yay -S --noconfirm stow

# zsh default shell
chsh -s /usr/bin/zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended