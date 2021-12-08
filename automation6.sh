#!/usr/bin/zsh
set -exuo pipefail

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
just ln-myscripts

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
============== option ==============
# select Asia -> Tokyo
# sudo dpkg-reconfigure tzdata
#
============== option ==============
# Install gcloud command
# see https://cloud.google.com/sdk/docs/install
#
============== option ==============
# Install auto-cpufreq, cpuファンがあまり回らなくなった
# --installでserviceが起動する
# https://github.com/AdnanHodzic/auto-cpufreq
# snap install auto-cpufreq
# auto-cpufreq --install
#
'

