# zinit installer
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [[ ! -f ${ZINIT_HOME}/zinit.zsh ]]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# ice modifier は その次のzinitしか影響しない
# lucid is quiet
zinit ice wait'0' lucid; zinit load zsh-users/zsh-completions
zinit ice wait'0' lucid; zinit load zsh-users/zsh-syntax-highlighting
zinit ice wait'0' lucid; zinit load zsh-users/zsh-autosuggestions
zinit ice wait'0' lucid; zinit load zdharma-continuum/history-search-multi-word
zinit ice wait'0' lucid atload"zicompinit; zicdreplay" blockf
zinit load hamadakafu/zsh-completions
# この後にautoload -Uz compinit && compinit -Cするとなぜか早い

zinit light mafredri/zsh-async  # dependency
zinit ice svn silent atload'prompt sorin'
zinit snippet PZT::modules/prompt
zinit ice svn silent
zinit snippet PZT::modules/editor

