#!/bin/sh

# set terminal
export TERM=st
# make Qt5 apps have the same color scheme as non-Qt apps
export QT_STYLE_OVERRIDE=gtk2

setbg &
picom &
dwmblocks &
exec dwm
