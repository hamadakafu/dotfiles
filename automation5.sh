#!/usr/bin/zsh
set -exuo pipefail

just install-asdf-plugins

echo "================================"
echo "exec 'asdf install python latest'"
echo "exec 'asdf install nodejs latest'"
echo "exec 'asdf install golang latest'"
echo "exec 'asdf install julia latest'"
echo "================================"

