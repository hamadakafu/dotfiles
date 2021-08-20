#!/bin/bash
set -exuo pipefail

apt update
apt upgrade -y

apt install -y software-properties-common

add-apt-repository ppa:berglh/pulseaudio-a2dp
add-apt-repository ppa:obsproject/obs-studio
apt update
apt install -y \
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

curl https://sh.rustup.rs -sSf | sh -s -- -y
cargo install
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
  hexly \
  cargo-update \
  tokei \
  zoxide

chmod +s /usr/bin/light

mkdir -p ~/Documents
cd ~/Documents/
git clone https://github.com/hamadakafu/dotfiles
# input credentials

# prezto
# anyenv
# neovim
# nerd font fira code

just install-prezto
just ln-zshrc-ubuntu
exec -l zsh

just install-anyenv
just ln-default-packages
readonly INSTALL_PYVERSION=$(pyenv install --list | grep -e '^..[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
pyenv install "${INSTALL_PYVERSION}"
readonly INSTALL_NODVERSION=$(nodenv install --list | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
nodenv install "${INSTALL_NODVERSION}"

just install-neovim
just ln-nvim

just font-install-ubuntu

# option
# set +exuo
# add-apt-repository ppa:nathan-renniewaldock/flux # night modeにできるfluxguiのppa
# apt install -y fluxgui # night modeの管理
# pactl load-module module-bluetooth-discover が必要かも知れない
