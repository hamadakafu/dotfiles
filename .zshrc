#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# 環境変数
export LANG=ja_JP.UTF-8
export EDITOR=vim

# compinitは多分ここにはいらない時間かかるし
# autoload -Uz compinit
# compinit
autoload -Uz colors
colors

# histroy setting
# # plugin zaw
# source /Users/kafuhamada/zsh_plugin/zaw/zaw.zsh
# bindkey '^h' zaw-history
# # history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# history no duplicate
setopt hist_ignore_dups
# history share
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=200000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY

# my bin
export PATH="/Users/kafuhamada/mybin:$PATH"
export PATH="/Users/kafuhamada/.local/bin:$PATH"

# nim
export PATH=$HOME/.nimble/bin:$PATH

# rust
export PATH="/Users/kafuhamada/.cargo/bin:$PATH"
export RUST_BACKTRACE=1

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..
# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
# use cache
zstyle ':completion::complete:*' use-cache true

zstyle ':completion:*' verbose yes
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# # git
# zstyle ':prezto:load' pmodule \
#   'git'

# add zsh hook
autoload -Uz add-zsh-hook
# add-zsh-hook precmd vcs_info
add-zsh-hook precmd _gcp_info

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

# # prompt variable expansion
# setopt prompt_subst
#
# PROMPT='$(kube_ps1) (${_gcp_prompt}) ${vcs_info_msg_0_}
# $python_info[virtualenv]${editor_info[keymap]} '
#
# # gcp info for prompt
# _gcp_info() {
#     if [ -f "$HOME/.config/gcloud/active_config" ]; then
#         _gcp_profile=$(cat $HOME/.config/gcloud/active_config)
#         _gcp_account=$(cat $HOME/.config/gcloud/configurations/config_${_gcp_profile} | awk '/^account/{print $3}')
#         _gcp_project=$(cat $HOME/.config/gcloud/configurations/config_${_gcp_profile} | awk '/^project/{print $3}')
#
#         if [ -z ${_gcp_project} ]; then
#             _gcp_prompt="none-project!!!"
#         fi
#
#         _gcp_prompt="google|%{$fg[blue]%}${_gcp_profile}%{$reset_color%}|%{$fg[green]%}${_gcp_account}%{$reset_color%}|%{$fg[yellow]%}${_gcp_project}%{$reset_color%}"
#     fi
# }

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# pub that is dart package manager
export PATH="$PATH":"$HOME/.pub-cache/bin"

# flutter setting
export PATH="$PATH":"$HOME/flutter_config/flutter/bin"
flutter () {
  unfunction "$0"
  source <(flutter zsh-completion)
  $0 "$@"
}

# grpc protoc
export PATH="$PATH":"$HOME/.protoc/protoc-3.7.1-osx-x86_64/bin"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"

# golang now using goenv
export GO111MODULE=on
PATH=$PATH:$GOPATH/bin

# pyenv-virtualenv setting
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# istio
export PATH="$HOME/istio-1.15/bin:$PATH"

# kubesec completion
kubesec() {
  unfunction "$0"
  source <(kubesec completion zsh)
  $0 "$@"
}

# pip completion
pip() {
  unfunction "$0"
  source <(pip completion --zsh)
  $0 "$@"
}

# kubectl: もとからあるやつよりもrichになる
kubectl() {
  unfunction "$0"
  source <(kubectl completion zsh)
  $0 "$@"
}
# kubectl_fzf.plugin.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kafuhamada/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kafuhamada/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kafuhamada/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kafuhamada/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# gcloud completion addtional setting
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
export CLOUDSDK_PYTHON=python3

# gcloud and fzf

gcloudx() {
  gcloud config configurations activate $(gcloud config configurations list | fzf | awk '{print $1}')
}

# aws cli
# pip とか入っていて無視したいので優先度を下げている
export PATH=$PATH:/usr/local/aws/bin
autoload -U +X bashcompinit && bashcompinit
source /usr/local/aws/bin/aws_zsh_completer.sh

# terraform
complete -o nospace -C /usr/local/bin/terraform terraform

# llvm & clangd
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# libffi
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# # asdf
# . /usr/local/opt/asdf/asdf.sh
# . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# hadoop
export PATH="/Users/kafuhamada/hadoop-2.8.5/bin:$PATH"

# java8 adoptopenjdk8
export JAVA_HOME=$(/usr/libexec/java_home -v "1.8")
export PATH=${JAVA_HOME}/bin:${PATH}

# direnv
eval "$(direnv hook zsh)"

# nix
if [ -e /Users/kafuhamada/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/kafuhamada/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# berglas
berglas() {
  unfunction "$0"
  source <(berglas completion zsh)
  $0 "$@"
}

# kompose
kompose() {
  unfunction "$0"
  source <(kompose completion zsh)
  $0 "$@"
}

# argocd
# rm /Users/kafuhamada/.zprezto/modules/completion/external/src/_argocd || true
argocd completion zsh > /Users/kafuhamada/.zprezto/modules/completion/external/src/_argocd || true

# stack
eval "$(stack --bash-completion-script stack)"

# connect docker sock
# curl --unix-socket /var/run/docker.sock localhost/images/json

# zsh計測
zsh_time_cal() {
  for i in {1..10} ; do time ( zsh -i -c exit ); done
}



# --------------------------------------------------------------------
# 計測用 ファイルの最後に置く zshenv と一緒に使う
# if (which zprof > /dev/null) ;then
#   zprof | less
# fi


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

zinit ice wait'!0'; zinit load zsh-users/zsh-syntax-highlighting
zinit ice wait'!0'; zinit load zsh-users/zsh-completions
zinit ice wait'!0'; zinit load zsh-users/zsh-autosuggestions
zinit ice wait'!0' pick"init.sh" ; zinit load b4b4r07/enhancd

### End of Zinit's installer chunk

# alias config
alias ll='ls -la --header --inode'
alias ls='exa'
unalias lt

alias rm='rmtrash'
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

# please
alias please='sudo'

# cat -> bat
alias cat='bat'

# grep -> ripgrep
# spaceship themeと衝突するため可能性あり
alias grep='rg --hidden'

# find -> fd
alias find='fd --hidden'

# ps -> procs
alias ps='procs'

# vim -> nvim
alias vim='nvim'

# terraform -> tf
alias tf='terraform'

# docker-compose
alias dc='docker-compose'

# tarコマンド毎回わからなくなるので
alias tar='tar -zcvf'
alias untar='tar -zxvf'

# curl
alias curl-detail='curl -kivL'

# krew
export PATH="${PATH}:${HOME}/.krew/bin"

