#!/bin/bash
set -exuo pipefail

sudo apt update
sudo apt upgrade -y

# General
sudo apt install -y \
  software-properties-common \
  vim \
  curl \
  git \
  zsh \
  direnv \
  fcitx-mozc \
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
  ipcalc

# gnome-boxes
sudo apt install -y spice-webdavd

# php
sudo apt install -y \
  autoconf \
  bison \
  build-essential \
  curl \
  gettext \
  git \
  libgd-dev \
  libcurl4-openssl-dev  \
  libedit-dev \
  libicu-dev \
  libjpeg-dev \
  libmysqlclient-dev \
  libonig-dev \
  libpng-dev \
  libpq-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2-dev \
  libzip-dev \
  openssl \
  pkg-config \
  re2c \
  zlib1g-dev

# X
sudo apt install -y \
  xsel \
  xclip \
  i3 \
  xcompmgr

# Wayland
sudo apt install -y \
  sway \
  xwayland \
  wl-clipboard

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
