alias vim='nvim'

alias ls='eza'
alias la='ls -a'
alias ll='ls -la --header --inode --git'
alias less='less -R'
alias tree='eza --tree'

alias rm='trash'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# kubernetes alias
alias k='kubectl'
alias kp='kube-prompt'
alias kn='kubens'
alias kx='kubectx'
# alias ks='kubeseal'

# cat -> bat
alias cat='bat'

# grep -> ripgrep
# spaceship themeと衝突するため可能性あり
alias grep='rg --hidden'

# find -> fd
alias find='fd --hidden --no-ignore'

# vim -> nvim
alias vim='nvim'

# terraform -> tf
alias tf='terraform'

# tarコマンド毎回わからなくなるので
# alias tar='tar -zcvf'
# alias untar='tar -zxvf'

# curl
alias curl-detail='curl -kivL'


# diff
alias diff='delta'

# fvm
alias flutter='fvm flutter'

# radare
alias r2a='r2 -c aaaaaa'

# xdg-open
if [[ "${OSTYPE}" == "linux-gnu" ]]; then
  alias open='xdg-open'
fi
