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

cargo install --path \
  ~/Documents/github.com/hamadakafu/dictor || true
