# histroy setting
# # history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

autoload -z edit-command-line
zle -N edit-command-line # zle -Nで関数をwidgetとして登録
bindkey '^X' edit-command-line # bindkeyでwidgetをbind

# navi
_call_navi() {
  local selected
  if [ -n "$LBUFFER" ]; then
    if selected="$(printf "%s" "$(navi --print --fzf-overrides '--no-select-1' --query "${LBUFFER}" </dev/tty)")"; then
      LBUFFER="$selected"
    fi
  else
    if selected="$(printf "%s" "$(navi --print </dev/tty)")"; then
      LBUFFER="$selected"
    fi
  fi
  zle redisplay
}
zle -N _call_navi
bindkey '^g' _call_navi

function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "${LBUFFER}" --height '40%' --layout=reverse)
  zle reset-prompt
  CURSOR=${#BUFFER}
}
zle -N select-history
bindkey '^r' select-history
