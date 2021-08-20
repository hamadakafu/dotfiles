commit-all:
  git add . && git commit -m "iroiro" && git push

cp-zshrc:
  yes | cp ~/.zshrc .

cp-ubuntu-zshrc:
  yes | cp ~/.zshrc .zshrc-ubuntu

cp-ideavim:
  cp ~/.ideavimrc .

test-automation:
  sudo docker run -i -t --rm ubuntu /bin/bash -c  "apt update && apt install curl && curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation.sh | bash -"

install-prezto:
  zsh && git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"; done
  rm ${HOME}/.zshrc
  just ln-zshrc-ubuntu
  chsh -s $(which zsh)
  exec -l zsh

install-anyenv:
  git clone https://github.com/anyenv/anyenv ~/.anyenv
  anyenv install --init
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
  anyenv install pyenv
  anyenv install nodenv
  git clone https://github.com/jawshooah/pyenv-default-packages.git $(pyenv root)/plugins/pyenv-default-packages
  git clone https://github.com/nodenv/nodenv-default-packages.git $(nodenv root)/plugins/nodenv-default-packages

install-neovim:
  apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl
  mkdir -p ~/Documents/github.com/neovim
  cd ~/Documents/github.com/neovim
  git clone https://github.com/neovim/neovim
  git chechout stable
  cd neovim
  make -j4
  make CMAKE_BUILD_TYPE=Release
  make install

ln-nvim:
  ln -s ~/Documents/dotfiles/nvim ~/.config;

ln-default-packages:
  ln -s ~/Documents/dotfiles/.anyenv/envs/pyenv/default-packages ~/.anyenv/envs/pyenv/default-packages;
  ln -s ~/Documents/dotfiles/.anyenv/envs/nodenv/default-packages ~/.anyenv/envs/nodenv/default-packages;

ln-wezterm:
  ln -s ~/Documents/dotfiles/.config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

ln-git:
  ln -s ~/Documents/dotfiles/.config/git ~/.config

ln-tmux:
  ln -s ~/Documents/dotfiles/.tmux.conf ~/.tmux.conf

ln-zshrc-ubuntu:
  ln -s ~/Documents/dotfiles/.zshrc-ubuntu ~/.zshrc

ln-alacritty-ubuntu:
  mkdir ~/.config/alacritty || \
  ln -s ~/Documents/dotfiles/Desktop/alacritty.desktop ~/Desktop/alacritty.desktop || \
  ln -s ~/Documents/dotfiles/.config/alacritty/alacritty.ubuntu.yml ~/.config/alacritty/alacritty.yml

font-install-ubuntu:
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
  fc-cache -f -v
  fc-list | grep "Fira"
