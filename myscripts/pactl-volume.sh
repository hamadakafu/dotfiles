#!/bin/bash
set -euo pipefail

pactl list sinks | grep '^\s*Volume:' | awk '{print $5}'
