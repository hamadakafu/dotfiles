#!/bin/zsh
set -exuo pipefail

curl https://sh.rustup.rs -sSf | sh

export PATH=$PATH:~/.cargo/bin

cargo install \
  cargo-binstall \
  || true

cargo binstall \
  alacritty \
  cargo-biodiff \
  cargo-bloat \
  cargo-bootimage \
  cargo-edit \
  cargo-expand \
  cargo-license \
  cargo-nextest \
  cargo-profiler \
  cargo-update \
  cargo-watch \
  flamegraph \
  kmon \
  mdbook \
  menyoki \
  pwninit \
  sqlx-cli \
  xargo \
  || true

# x11の場合
# see also https://github.com/k0kubun/xremap
cargo install xremap --features x11 || true

cargo install --path \
  ~/Documents/github.com/hamadakafu/dictor/src-tauri || true
