#!/bin/bash

if [ $# -ne 4 ]
then
  echo "Usage:  $0 --title title --command COMMAND"
  exit 1
fi
while [[ $# -gt 0 ]]; do
  case $1 in
    --title)
      title="$2"
      shift
      shift
      ;;
    --command)
      cmd="$2"
      shift
      shift
      ;;
    *)
      shift
      ;;
  esac
done

window=$(swaymsg -t get_tree | jq -r '..|try select(.name | test("'${title}'"))')

if [ ! -z "$(echo $window | jq -r .pid)" ]; then
    # echo "window with app_id \"$title\" exists"
    if [ "$(echo $window | jq -r .visible)" = "true" ]; then
        # echo "window is visible, move it to scratchpad"
        swaymsg [ title="$title" ] move scratchpad
    else
        # echo "window is not visible, show it"
        swaymsg [ title="$title" ] move window to workspace current, move scratchpad, scratchpad show
    fi
else
    # echo "window with app_id \"$app_id\" does not exist"
    # echo "launching $cmd"
    [ -x $(command -v $cmd) ] && $cmd >/dev/null 2>&1 &
fi
