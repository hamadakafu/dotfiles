#!/bin/zsh
set -exuo pipefail

export PATH=$PATH:~/.cargo/bin

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
  zoxide || true

sudo chmod +s /usr/bin/light

mkdir -p ~/Documents
cd ~/Documents/
git clone https://github.com/hamadakafu/dotfiles
