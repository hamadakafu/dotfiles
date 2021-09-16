#!/usr/bin/zsh
set -exuo pipefail

just install-anyenv2

just ln-default-packages
INSTALL_PYVERSION=$(pyenv install --list | xargs | tr ' ' '\n' | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
pyenv install ${INSTALL_PYVERSION}
pyenv global ${INSTALL_PYVERSION}
INSTALL_NODVERSION=$(nodenv install --list | xargs | tr ' ' '\n' | grep -e '^[0-9]+.[0-9]+.[0-9]+$' | tail -n 1)
nodenv install ${INSTALL_NODVERSION}
nodenv global ${INSTALL_NODVERSION}

sudo apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl
cd ~/Documents/dotfiles
just install-neovim
just install-dein-vim

cd ~/Documents/dotfiles
just install-fonts

cd ~/Documents/dotfiles
just install-tpm

cd ~/Documents/dotfiles
just ln-nvim
just ln-tmux
just ln-git
just ln-alacritty-ubuntu

sudo localectl set-locale LANG=ja_JP.UTF-8

echo '
============== option ==============
# sudo add-apt-repository ppa:berglh/pulseaudio-a2dp
# sudo add-apt-repository ppa:obsproject/obs-studio
# add-apt-repository ppa:nathan-renniewaldock/flux # night modeにできるfluxguiのppa
# apt install -y fluxgui # night modeの管理
#
============== option ==============
# bluetoothを使うのに必要かも知れない
# pactl load-module module-bluetooth-discover
#
============== option ==============
# I dont know the details, generating locales info...
# In order to avoid bugs, select ja_JP.UTF-8
# sudo dpkg-reconfigure locales
#
'
