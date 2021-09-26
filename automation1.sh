#!/bin/bash
set -exuo pipefail

sudo apt update
sudo apt upgrade -y

sudo apt install -y software-properties-common

sudo apt update
sudo apt install -y \
  vim \
  curl \
  git \
  zsh \
  direnv \
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
  libssl1.0-dev \
  libedit-dev \
  clangd \
  libxmu-dev \
  libmpfr-dev \
  libmpc-dev \
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
  nasm \
  xcompmgr \
  universal-ctags \
  socat \
  pdftk \
  tesseract-ocr-jpn \
  tesseract-ocr-eng

# kmon
sudo apt install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev
# alaritty
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

curl https://sh.rustup.rs -sSf | sh

echo "-----------------------------------"
echo "zsh"
echo "-----------------------------------"
echo "curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation2.sh | zsh -"
