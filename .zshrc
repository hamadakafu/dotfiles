# 計測用
zmodload zsh/zprof

ZSHHOME="${HOME}/.zsh.d"

# man test
if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# 計測用
zprof
