#!/bin/zsh
set -exuo pipefail

curl https://sh.rustup.rs -sSf | sh

export PATH=$PATH:~/.cargo/bin

cargo install \
  cargo-update \
  cargo-edit \
  cargo-license \
  cargo-profiler \
  cargo-watch \
  cargo-bloat \
  cargo-nextest \
  cargo-biodiff \
  sqlx-cli \
  kmon \
  menyoki \
  || true

# x11の場合
# see also https://github.com/k0kubun/xremap
cargo install xremap --features x11 || true

if ! [ -x "$(command -v alacritty)" ]; then
  echo 'Install alacritty'
  cargo install alacritty
fi

if ! [ -x "$(command -v navi)" ]; then
  echo 'Install navi'
  cargo install navi
fi


cargo install --path \
  ~/Documents/github.com/hamadakafu/dictor/src-tauri || true
