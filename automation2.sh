#!/bin/zsh
set -exuo pipefail

curl https://sh.rustup.rs -sSf | sh

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
  sqlx-cli \
  bottom \
  hyperfine \
  zoxide || true

sudo chmod +s /usr/bin/light

mkdir -p ~/Documents
cd ~/Documents/
git clone https://github.com/hamadakafu/dotfiles
