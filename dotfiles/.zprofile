export PATH=$HOME/.local/bin:$PATH

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx &>/dev/null
fi

if [ -f ~/.cache/wal/colors.sh ]; then
	source ~/.cache/wal/colors.sh
fi
