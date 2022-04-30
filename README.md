## Init
https://zdharma-continuum.github.io/zinit/wiki/
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
just install-dein-vim
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
```
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt install appimagelauncher
```

### texlive
```
sudo apt install texlive-full
```

### linux brew
https://brew.sh/

```
brew install \
leoafarias/fvm/fvm \
mycli \
pgcli \
exa \
bat \
ripgrep \
just \
navi \
bottom \
git-delta \
hexyl \
zoxide \
fd \
tokei \
hyperfine \
dua-cli \
grex \
zellij \
bingrep \
nvim \
upx \
poetry
```

