export SAMPLE_ENV=hgeohgeo

if [[ "${OSNAME}" == "macos" ]]; then
  ulimit -n 2048
fi

if [[ "${OSNAME}" == "macos" ]] && [[ -f "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" ]]; then
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
fi

if [[ "${OSNAME}" == "linux" ]] && [[ -f "/snap/google-cloud-sdk/current/completion.zsh.inc" ]]; then
  source /snap/google-cloud-sdk/current/completion.zsh.inc
fi

# opam
eval $(opam env)


# 重複しているPATHを削除
typeset -U PATH

