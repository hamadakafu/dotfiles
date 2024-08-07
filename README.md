## Init
```
mkdir -p ~/Documents
cd ~/Documents/
git clone https://github.com/hamadakafu/dotfiles
```
### Ubuntu

```bash
sudo apt update
sudo apt upgrade -y

sudo apt install -y software-properties-common curl sudo

curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/ubuntu-automation1.sh | bash -
# or curl -sSfL https://bit.ly/3DzhM3Y | bash -
zsh
curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation2.sh | zsh -
# or curl -sSfL https://bit.ly/3oyXvaz | zsh -
```

### Arch
TODO
```bash
curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/arch-automation1.sh | bash -
# or curl -sSfL https://bit.ly/3lKQW2y | bash -
zsh
curl -sSf https://raw.githubusercontent.com/hamadakafu/dotfiles/master/automation2.sh | zsh -
# or curl -sSfL https://bit.ly/3oyXvaz | zsh -

# then, you can use sway
```

## Options
### neovim
```
# see also https://github.com/neovim/neovim/wiki/Installing-Neovim
just ln-nvim
```

### ghcup
https://www.haskell.org/ghcup/

### misc
```
just install-fonts
just ln-git
just ln-alacritty-ubuntu
just ln-zellij
just ln-myscripts
just ln-pam-env
```

### google drive
https://github.com/astrada/google-drive-ocamlfuse

### app image launcher
https://github.com/TheAssassin/AppImageLauncher/wiki
https://github.com/AppImageCommunity/AppImageUpdate
```
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt install appimagelauncher
```

### texlive
```
sudo apt install texlive-full
```

### Xilinx (Vivado)
~/Xilinx

### linux brew
https://brew.sh/

```
brew install \
bat \
bingrep \
bottom \
dua-cli \
elixir-ls \
eza \
fd \
git-delta \
hexyl \
hyperfine \
just \
leoafarias/fvm/fvm \
minikube \
mycli \
navi \
nvim \
pgcli \
podman \
podman-compose \
poetry \
ripgrep \
ruff \
tokei \
zoxide \
grex \
zellij \
zls
```

