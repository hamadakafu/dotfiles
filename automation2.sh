#!/bin/zsh
set -exuo pipefail

curl https://sh.rustup.rs -sSf | sh

export PATH=$PATH:~/.cargo/bin

cargo install \
  cargo-update \
  cargo-edit \
  cargo-license \
  cargo-watch \
  cargo-bloat \
  sqlx-cli \
  kmon \
  menyoki \
  || true

if ! [ -x "$(command -v alacritty)" ]; then
  echo 'Install alacritty'
  cargo install alacritty
fi

if ! [ -x "$(command -v navi)" ]; then
  echo 'Install navi'
  cargo install navi
fi


cargo install --path \
  ~/Documents/github.com/hamadakafu/dictor || true
