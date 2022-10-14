if [[ "${OSNAME}" == "macos" ]]; then
  pop-text(){
    local readonly TOOLBOX_AUTH=$(
      cat ~/Google\ ドライブ/.config/toolbox-basicauth.txt \
        | tr -d '\n' \
        | base64 \
        | tr -d '\n')
    tmp=$(curl \
      -H "authorization: Basic ${TOOLBOX_AUTH}" \
      https://toolbox-web.fly.dev/texts/latest \
      | jq -r ".value")
        echo "copied: ${tmp}"
        echo -n "${tmp}" | pbcopy
  }
  push-text() {
    local readonly TOOLBOX_AUTH=$(
      cat ~/Google\ ドライブ/.config/toolbox-basicauth.txt \
        | tr -d '\n' \
        | base64 \
        | tr -d '\n')
    curl \
      -H "authorization: Basic ${TOOLBOX_AUTH}" \
      -H "content-type: application/json" \
      -X POST \
      -d '{"value": "'"$(pbpaste)"'"}' \
    https://toolbox-web.fly.dev/texts
  }
elif [[ "${OSNAME}" == "linux" ]]; then
  pop-text(){
    local readonly TOOLBOX_AUTH=$(
      cat ~/GoogleDrive/.config/toolbox-basicauth.txt \
        | tr -d '\n' \
        | base64 --wrap=0)
    tmp=$(curl \
      -H "authorization: Basic ${TOOLBOX_AUTH}" \
      https://toolbox-web.fly.dev/texts/latest \
      | jq -r ".value")
    echo "copied: ${tmp}"
    echo -n "${tmp}" | xsel --clipboard
  }
  push-text() {
    local readonly TOOLBOX_AUTH=$(
      cat ~/GoogleDrive/.config/toolbox-basicauth.txt \
        | tr -d '\n' \
        | base64 --wrap=0)
    curl \
      -H "authorization: Basic ${TOOLBOX_AUTH}" \
      -H "content-type: application/json" \
      -X POST \
      -d '{"value": "'"$(xsel --clipboard -o)"'"}' \
    https://toolbox-web.fly.dev/texts
  }
fi
