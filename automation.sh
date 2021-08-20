#!/bin/bash
set -exuo pipefail

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
  xsel \ # pbcopy相当
  xclip \ # pbcopy
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
  obs-studio \
  vlc \
  ffmpeg \
  fluxgui \ # night modeの管理
  luarocks \
  mycli \
  pgcli \
  libfftw3-dev \ # fftw
  inotify-tools \
  blueman \ # bluetooth gui # pactl load-module module-bluetooth-discover が必要かも知れない
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
  tokei

sudo chmod +s /usr/bin/light

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

