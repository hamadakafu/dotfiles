#!/usr/bin/zsh
set -exuo pipefail

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
# see also https://cloud.google.com/sdk/docs/install
# sudo snap install google-cloud-sdk --classic
# gcloud init
#
============== option ==============
# Install auto-cpufreq, cpuファンがあまり回らなくなった
# --installでserviceが起動する
# https://github.com/AdnanHodzic/auto-cpufreq
# snap install auto-cpufreq
# auto-cpufreq --install
#
============== option ==============
# Install dbeaver-ce
# snap install dbeaver-ce
#
============== option ==============
# Setup github personal access token
# goto github page
# generate personal access token, then save
# ~/.git-credentials
# https://<url_encoded_plain_text_username>:<url_encoded_plain_text_password>@github.com
#
============== option ==============
# config etc/systemd/timesyncd.conf
#
============== option ==============
# GNS3
# sudo add-apt-repository ppa:gns3/ppa
# sudo apt update
# sudo apt install gns3-gui gns3-server
============== option ==============
# Finger Print
# https://scrapbox.io/kafu-memo-public/linux_%E6%8C%87%E7%B4%8B%E8%AA%8D%E8%A8%BC
'

