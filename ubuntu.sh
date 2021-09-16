#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt-add-repository ppa:git-core/git
sudo add-apt-repository ppa:berglh/pulseaudio-a2dp
sudo add-apt-repository ppa:obsproject/obs-studio
sudo add-apt-repository ppa:nathan-renniewaldock/flux # night modeにできるfluxguiのppa
sudo apt update

sudo apt install -y \
  vim \
  fcitx-mozc \
  git \
  xclip \
  zsh \
  light \ # 明るさ変える
  i3 \
  tree \
  font-manager \
  trash-cli \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  pulseaudio \ # 音質上がる
  pulseaudio-modules-bt \
  libldac \
  musl-dev \ # musl系
  musl-tools \
  linux-libc-dev \
  libssl-dev \
  clangd \
  libxmu-dev \
  exuberant-ctags \
  software-properties-common \
  bridge-utils \ # brctl
  clang \
  cmake \
  ninja-build \
  pkg-config \
  libgtk-3-dev \
  texlive-full \
  gdebi \
  arandr \ # 複数のディスプレイを並び替える
  sagemath \
  obs-studio \
  vlc \
  ffmpeg \
  fluxgui \ # night modeの管理
  luarocks \
  mycli \
  pgcli \
  xsel \ # pbcopy相当
  libfftw3-dev \ # fftw
  inotify-tools \
  blueman \ # bluetooth gui # pactl load-module module-bluetooth-discover が必要かも知れない
  nasm \

sudo chmod +s /usr/bin/light

anyenv install goenv
anyenv install nodenv
anyenv install pyenv


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
  hexly \
  cargo-update \
  tokei \
  zoxide

