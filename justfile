commit-all:
  git add . && git commit -m "iroiro" && git push

test-automation:
  vagrant up
  vagrant ssh
  # "sudo apt update && apt install curl && curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation.sh | sudo bash -"
  # sudo docker run -i -t --rm ubuntu /bin/bash -c  "apt update && apt install curl && curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation.sh | bash -"

install-asdf:
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf

install-asdf-plugins:
  asdf plugin-add python
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  asdf plugin-add julia https://github.com/rkyleg/asdf-julia.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
  asdf plugin-add deno https://github.com/asdf-community/asdf-deno.git
  ln -s ~/Documents/dotfiles/.default-python-packages ~/.default-python-packages
  ln -s ~/Documents/dotfiles/.default-golang-pkgs ~/.default-golang-pkgs
  ln -s ~/Documents/dotfiles/.default-npm-packages ~/.default-npm-packages

install-dein-vim:
  mkdir -p ~/Downloads
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/Downloads/installer.sh
  sh ~/Downloads/installer.sh ~/.cache/dein
  rm ~/Downloads/installer.sh

install-fonts:
  # もしくはttfファイルをxdg-openで開いてinstallすると~/.local/share/fonts以下に設置される
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf

  fc-query -f '%{family[0]}\n' "Fira Code Regular Nerd Font Complete.ttf"
  fc-cache -f -v
  fc-list | grep "Fira"

ln-pam-env:
  ln -s ~/Documents/dotfiles/.pam_environment ~/.pam_environment

ln-nvim:
  ln -s ~/Documents/dotfiles/nvim ~/.config;

ln-i3:
  ln -s ~/Documents/dotfiles/.config/i3 ~/.config;

ln-sway:
  ln -s ~/Documents/dotfiles/.config/sway ~/.config;

ln-wezterm:
  ln -s ~/Documents/dotfiles/.config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

ln-git:
  ln -s ~/Documents/dotfiles/.config/git ~/.config

ln-zellij:
  ln -s ~/Documents/dotfiles/.config/zellij ~/.config

ln-zshrc-macos:
  ln -s ~/Documents/dotfiles/.zsh.d ~/
  ln -s ~/Documents/dotfiles/.zshrc-macos ~/.zshrc
  ln -s ~/Documents/dotfiles/.zshenv ~/.zshenv

ln-zshrc-linux:
  ln -s ~/Documents/dotfiles/.zsh.d ~/
  ln -s ~/Documents/dotfiles/.zshrc-linux ~/.zshrc
  ln -s ~/Documents/dotfiles/.zshenv ~/.zshenv

ln-alacritty-ubuntu:
  mkdir ~/.config/alacritty
  ln -s ~/Documents/dotfiles/.config/alacritty/alacritty.ubuntu.yml ~/.config/alacritty/alacritty.yml

ln-myscripts:
  ln -s ~/Documents/dotfiles/myscripts ~/myscripts

ln-karabiner-complex-modifications:
  ln -s ~/Documents/dotfiles/.config/karabiner/assets/complex_modifications ~/.config/karabiner/assets/complex_modifications

ln-x11:
  sudo ln -s ~/Documents/dotfiles/etc/X11/xorg.conf.d/99-libinput-costom.conf \
    /etc/X11/xorg.conf.d/99-libinput-costom.conf

ln-network:
  sudo cp ~/Documents/dotfiles/etc/netplan/01-systemd-networkd-all.yaml \
    /etc/netplan/01-systemd-networkd-all.yaml
  echo "sudo vim /etc/netplan/01-systemd-networkd-all.yaml \n sudo netplan try \n"

ln-docker:
  # rootless
  ln -s ~/Documents/dotfiles/.config/docker/daemon.json ~/.config/docker/daemon.json
