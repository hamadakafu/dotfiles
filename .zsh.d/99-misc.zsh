if [[ "${OSTYPE}" == "darwin" ]]; then
  ulimit -n 2048
fi

if [[ "${OSTYPE}" == "darwin" ]] && [[ -f "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" ]]; then
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
fi

if [[ "${OSTYPE}" == "linux-gnu" ]] && [[ -f "/snap/google-cloud-sdk/current/completion.zsh.inc" ]]; then
  source /snap/google-cloud-sdk/current/completion.zsh.inc
fi

# opam
eval $(opam env)

# java
if [[ -f "~/.asdf/plugins/java/set-java-home.zsh" ]]; then
  . ~/.asdf/plugins/java/set-java-home.zsh

fi

# 重複しているPATHを削除
typeset -U PATH

