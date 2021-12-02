#/bin/bash

mkdir -p /tmp/screenshots

readonly filename=/tmp/screenshots/$(date +"%T").png

import "$filename"
echo "$filename"

