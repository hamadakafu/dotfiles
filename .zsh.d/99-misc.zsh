export SAMPLE_ENV=hgeohgeo

if [[ "${OSNAME}" == "macos" ]]; then
  ulimit -n 2048
elif [[ "${OSNAME}" == "linux" ]] && [[ -f "/snap/google-cloud-sdk/current/completion.zsh.inc" ]]; then
  source /snap/google-cloud-sdk/current/completion.zsh.inc
fi


# 重複しているPATHを削除
typeset -U PATH

