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
  libedit-dev \
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
  gdebi \
  arandr \
  vlc \
  ffmpeg \
  luarocks \
  libfftw3-dev \
  inotify-tools \
  blueman \
  nasm \
  xcompmgr \
  universal-ctags \
  socat \
  pdftk \
  tesseract-ocr-jpn \
  tesseract-ocr-eng \
  nvme-cli \
  pavucontrol \
  maven \
  default-jdk \
  subversion \
  sway \
  xwayland \
  wl-clipboard \
  ipcalc

# network
# l2tp over ipsec(using ikev1)
sudo apt install -y \
  wpasupplicant \
  network-manager \
  network-manager-gnome \
  network-manager-l2tp-gnome

# kmon
sudo apt install -y libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev
# alaritty
sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# light
sudo apt install light
sudo chmod +s /usr/bin/light


echo "-----------------------------------"
echo "zsh"
echo "-----------------------------------"
echo "curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation2.sh | zsh -"
