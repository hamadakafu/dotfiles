#!/bin/zsh
set -exuo pipefail

if ! command -v brew &> /dev/null
then
    echo "brew could not be found"
    exit 2
fi

curl https://sh.rustup.rs -sSf | sh

export PATH=$PATH:~/.cargo/bin

cargo install \
  cargo-update \
  cargo-edit \
  cargo-license \
  cargo-watch \
  cargo-bloat \
  alacritty \
  kmon \
  sqlx-cli \
  menyoki \
  || true

cargo install --path \
  ~/Documents/github.com/hamadakafu/dictor || true
