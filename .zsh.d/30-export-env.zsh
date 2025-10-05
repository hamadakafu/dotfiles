# 環境変数
export EDITOR=nvim
export VISUAL=nvim # edit-command-lineではEDITORではなくVISUALを使う

export PKG_CONFIG_PATH="/usr/lib/pkgconfig:/usr/share/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:${PKG_CONFIG_PATH}"

export PATH="${HOME}/bin:${PATH}"
# export LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib

# iex
export ERL_AFLAGS="-kernel shell_history enabled"
# dotnet
export PATH="$PATH:$HOME/.dotnet/tools"


