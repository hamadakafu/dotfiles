#!/bin/bash
set -exuo pipefail

sudo apt update
sudo apt upgrade -y

sudo apt install -y software-properties-common

sudo add-apt-repository ppa:berglh/pulseaudio-a2dp
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y \
  vim \
  curl \
  git \
  zsh \
  fcitx-mozc \
  xsel \
  xclip \
  light \
  i3 \
  tree \
  font-manager \
  trash-cli \
  apt-transport-https \
  ca-certificates \
  gnupg-agent \
  pulseaudio \
  pulseaudio-modules-bt \
  libldac \
  musl-dev \
  musl-tools \
  linux-libc-dev \
  libssl-dev \
  clangd \
  libxmu-dev \
  exuberant-ctags \
  bridge-utils \
  clang \
  cmake \
  ninja-build \
  pkg-config \
  libgtk-3-dev \
  texlive-full \
  gdebi \
  arandr \
  obs-studio \
  vlc \
  ffmpeg \
  luarocks \
  mycli \
  pgcli \
  libfftw3-dev \
  inotify-tools \
  blueman \
  nasm

# kmon
sudo apt install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev
# alaritty
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

curl https://sh.rustup.rs -sSf | sh
exec -l $SHELL
cargo install \
  alacritty \
  procs \
  fd-find \
  bat \
  ripgrep \
  exa \
  git-delta \
  kmon \
  just \
  navi \
  hexyl \
  cargo-update \
  tokei \
  zoxide

sudo chmod +s /usr/bin/light

mkdir -p ~/Documents
cd ~/Documents/
git clone https://github.com/hamadakafu/dotfiles
cd dotfiles

# prezto
# anyenv
# neovim
# nerd font fira code

echo "-----------------------------------"
echo "zsh"
echo "-----------------------------------"
echo "curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation2.sh | zsh -"