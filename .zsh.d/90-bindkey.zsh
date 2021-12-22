# histroy setting
# # plugin zaw
# source /Users/kafuhamada/zsh_plugin/zaw/zaw.zsh
# bindkey '^h' zaw-history
# # history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward
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