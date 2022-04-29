sudo pacman -Syy
sudo pacman -Syyu
sudo pacman -Syu \
    git \
    base-devel \
    glibc \
    icu \
    xorg-xwayland \
    rofi \
    sway \
    swayidle \
    swaylock \
    zsh \
    neovim \
    just \
    subversion \
    microsoft-edge-stable-bin

yay -S $(yay -Si neovim | grep '^Depends On' | sed 's/Depends On.*://')
