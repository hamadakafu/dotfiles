sudo pacman -Syy
sudo pacman -Syyu
sudo pacman -Syu \
    git \
    base-devel

yay -Syy --needed \
    glibc \
    icu \
    netplan \
    pavucontrol \
    wpa_supplicant \
    xorg-xwayland \
    rofi \
    sway \
    swayidle \
    swaylock \
    waybar \
    wl-clipboard \
    fontconfig \
    adobe-source-han-sans-jp-fonts \
    adobe-source-han-serif-jp-fonts \
    noto-fonts \
    noto-fonts-emoji \
    fcitx5-im \
    fcitx5-configtool \
    fcitx5-mozc


yay -Syy --needed \
    direnv \
    zsh \
    neovim \
    subversion \
    microsoft-edge-stable-bin \
    jq

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
    tokei \
    xremap-x11-bin

# これいらないのか?
# yay -S --needed $(yay -Si neovim | grep '^Depends On' | sed 's/Depends On.*://')
# yay -S --needed $(yay -Si microsoft-edge-stable-bin | grep '^Depends On' | sed 's/Depends On.*://')
# yay -S --needed $(yay -Si fcitx | grep '^Depends On' | sed 's/Depends On.*://')
#
