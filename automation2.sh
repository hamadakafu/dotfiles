#!/bin/zsh
set -exuo pipefail

just install-prezto
just ln-zshrc-ubuntu
exec -l zsh

just install-anyenv
just ln-default-packages
INSTALL_PYVERSION=$(pyenv install --list | xargs | tr ' ' '\n' | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
pyenv install ${INSTALL_PYVERSION}
INSTALL_NODVERSION=$(nodenv install --list | xargs | tr ' ' '\n' | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
nodenv install ${INSTALL_NODVERSION}

sudo apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl
cd ~/Documents/dotfiles
just install-neovim

cd ~/Documents/dotfiles
just ln-nvim

cd ~/Documents/dotfiles
just font-install-ubuntu

# option
# set +exuo
# add-apt-repository ppa:nathan-renniewaldock/flux # night modeにできるfluxguiのppa
# apt install -y fluxgui # night modeの管理
# pactl load-module module-bluetooth-discover が必要かも知れない
