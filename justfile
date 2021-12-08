commit-all:
  git add . && git commit -m "iroiro" && git push

cp-zshrc:
  yes | cp ~/.zshrc .

cp-ubuntu-zshrc:
  yes | cp ~/.zshrc .zshrc-ubuntu

cp-ideavim:
  cp ~/.ideavimrc .

test-automation:
  vagrant up
  vagrant ssh
  # "sudo apt update && apt install curl && curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation.sh | sudo bash -"
  # sudo docker run -i -t --rm ubuntu /bin/bash -c  "apt update && apt install curl && curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation.sh | bash -"

install-prezto:
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do if [[ -f "${ZDOTDIR:-$HOME}/.${rcfile:t}" ]]; then rm "${ZDOTDIR:-$HOME}/.${rcfile:t}"; fi ; ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"; done

install-anyenv1:
  git clone https://github.com/anyenv/anyenv ~/.anyenv
  anyenv install --init
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
  anyenv install pyenv
  anyenv install nodenv
  echo "run 'exec -l zsh'"

install-anyenv2:
  git clone https://github.com/jawshooah/pyenv-default-packages.git $(pyenv root)/plugins/pyenv-default-packages
  git clone https://github.com/nodenv/nodenv-default-packages.git $(nodenv root)/plugins/nodenv-default-packages

install-neovim:
  mkdir -p ~/Documents/github.com/neovim
  cd ~/Documents/github.com/neovim && \
  git clone https://github.com/neovim/neovim && \
  cd neovim && \
  git switch release-0.5 && \
  make -j4 && \
  make CMAKE_BUILD_TYPE=Release && \
  sudo make install

install-dein-vim:
  mkdir -p ~/Downloads
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/Downloads/installer.sh
  sh ~/Downloads/installer.sh ~/.cache/dein
  rm ~/Downloads/installer.sh


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

install-tpm:
  mkdir -p ~/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo 'In order to install plugins, press key "prefix + i" in tmux!'

ln-zshrc-ubuntu:
  ln -s ~/Documents/dotfiles/.zshrc-ubuntu ~/.zshrc

ln-alacritty-ubuntu:
  mkdir ~/.config/alacritty || \
  cp ~/Documents/dotfiles/Desktop/alacritty.desktop ~/Desktop/alacritty.desktop && \
  sed -i "s~Exec~Exec=${HOME}/.cargo/bin/alacritty~g" ~/Desktop/alacritty.desktop && \
  ln -s ~/Documents/dotfiles/.config/alacritty/alacritty.ubuntu.yml ~/.config/alacritty/alacritty.yml

ln-myscripts:
  ln -s ~/Documents/dotfiles/myscripts ~/myscripts

ln-karabiner-complex-modifications:
  ln -s ~/Documents/dotfiles/.config/karabiner/assets/complex_modifications ~/.config/karabiner/assets/complex_modifications
install-fonts:
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
  fc-cache -f -v
  fc-list | grep "Fira"
