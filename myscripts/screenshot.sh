#/bin/bash

readonly t=$(date +"%Y_%m_%d/%H:%M:%S")
readonly filename="${HOME}/Pictures/${t}.png"

menyoki capture png save "${filename}"

xclip -selection clipboard -t image/png -i "${filename}"
