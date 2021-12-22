# mybin
export PATH="$HOME/mybin:$PATH"
export PATH="$HOME/myscripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# asdf
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
export ASDF_GOLANG_DEFAULT_PACKAGES_FILE=$HOME/.default-golang-pkgs
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE=$HOME/.default-python-packages
export ASDF_NPM_DEFAULT_PACKAGES_FILE=$HOME/.default-npm-packages

# rust
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_BACKTRACE=1

# haskell
[ -f "${HOME}/.ghcup/env" ] && source "${HOME}/.ghcup/env" # ghcup-env

# nim
export PATH=$HOME/.nimble/bin:$PATH

# dart
export PATH="$HOME/.pub-cache/bin:$PATH"
export PATH="$HOME/flutter_config/flutter/bin:$PATH"
if [[ "${OSNAME}" == "linux" ]]; then
  export PATH="$PATH:/usr/lib/dart/bin"
fi

# grpc protoc
export PATH="$HOME/.protoc/protoc-3.7.1-osx-x86_64/bin:$PATH"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# zoxide
eval "$(zoxide init zsh)"

# elan lean4
export PATH="$HOME/.elan/bin:$PATH"

# krew
export PATH="$HOME/.krew/bin:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
