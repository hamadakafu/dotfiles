sudo pacman -Syy
sudo pacman -Syyu
sudo pacman -Syu \
    git \
    base-devel

yay -Syy --needed \
    glibc \
    icu \
    netplan \
    wpa_supplicant
    xorg-xwayland \
    rofi \
    sway \
    swayidle \
    swaylock \
    wl-clipboard \
    fontconfig \
    adobe-source-han-sans-jp-fonts \
    adobe-source-han-serif-jp-fonts \
    fcitx-im \
    fcitx-configtool \
    fcitx-mozc


yay -Syy --needed \
    direnv \
    zsh \
    neovim \
    subversion \
    microsoft-edge-stable-bin

yay -Syy --needed \
    just \
    zellij \
    exa \
    fd \
    ripgrep \
    zoxide \
    hexyl \
    hyperfine \
    bat \
    alacritty \
    tokei

yay -S --needed $(yay -Si neovim | grep '^Depends On' | sed 's/Depends On.*://')
yay -S --needed $(yay -Si microsoft-edge-stable-bin | grep '^Depends On' | sed 's/Depends On.*://')
yay -S --needed $(yay -Si fcitx | grep '^Depends On' | sed 's/Depends On.*://')
