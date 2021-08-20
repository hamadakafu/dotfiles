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

just install-prezto
just ln-zshrc-ubuntu
exec -l zsh

just install-anyenv
just ln-default-packages
INSTALL_PYVERSION=$(pyenv install --list | xargs | tr ' ' '\n' | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
pyenv install ${INSTALL_PYVERSION}
INSTALL_NODVERSION=$(nodenv install --list | xargs | tr ' ' '\n' | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
nodenv install ${INSTALL_NODVERSION}

sudo apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl
cd ~/Documents/dotfiles
just install-neovim

cd ~/Documents/dotfiles
just ln-nvim

cd ~/Documents/dotfiles
just font-install-ubuntu

# option
# set +exuo
# add-apt-repository ppa:nathan-renniewaldock/flux # night modeにできるfluxguiのppa
# apt install -y fluxgui # night modeの管理
# pactl load-module module-bluetooth-discover が必要かも知れない
