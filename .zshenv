# 計測用
# zmodload zsh/zprof && zprof

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

source "$HOME/.cargo/env"

# Skip the not really helping Ubuntu global compinit
# Ubuntuではデフォルトで/etc/zsh/zshenvでcompinitを実行してしまうので
# 以下の変数を定義してskipする
skip_global_compinit=1
