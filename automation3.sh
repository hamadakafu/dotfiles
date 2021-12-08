#!/usr/bin/zsh
set -exuo pipefail

cd ~/Documents/dotfiles

just install-prezto
rm ~/.zshrc
just ln-zshrc-linux

echo "run 'exec -l zsh'"

