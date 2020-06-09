#!/bin/sh

# set terminal
export TERM=st

# set background
if [ -f ~/.config/dwm-background.jpg ]; then
    wal -i ~/.config/dwm-background.jpg
else
    xsetroot -solid "#000000"
fi

setbg &
xcompmgr &
dwmblocks &
exec dwm
