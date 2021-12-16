## Init
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
just install-neovim # from source
just install-dein-vim
just ln-nvim
```

### misc
```
just install-fonts
just install-tpm
just ln-tmux
just ln-git
just ln-alacritty-ubuntu
just ln-myscripts
```

### google drive
https://github.com/astrada/google-drive-ocamlfuse

