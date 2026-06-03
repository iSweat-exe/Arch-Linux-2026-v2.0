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
# >> Update Script

set -e

# system, AUR
yay -Syu --noconfirm

# unused dependencies
orphans=$(yay -Qdtq)
if [ -n "$orphans" ]; then
    yay -Rns --noconfirm $orphans
fi

# pacman cache
paccache -rk2

# yay cache
yay -Sc --noconfirm