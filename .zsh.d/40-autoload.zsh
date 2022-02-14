autoload -Uz colors
colors

# ~~stackの前に実行する必要がある~~
# -U はユーザ定義のaliasを無視する
# -z はzshユーザ用のオプションで明示的にkshではないことを指定する
autoload -Uz +X compinit && compinit

# autoload -Uz +X bashcompinit && bashcompinit
# 基本的にzshrc内でcompinitを呼ぶべきでないめちゃくちゃ重くなる
#
