export SAMPLE_ENV=hgeohgeo

if [[ "${OSNAME}" == "macos" ]]; then
  ulimit -n 2048
fi

# 重複しているPATHを削除
typeset -U PATH

