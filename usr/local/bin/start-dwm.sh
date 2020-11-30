#!/bin/sh

# set terminal
export TERM=st
# make Qt5 apps have the same color scheme as non-Qt apps
export QT_STYLE_OVERRIDE=gtk2

setbg &
(sleep 1 && picom --experimental-backends) &
dwmblocks &
/usr/lib/polkit-kde-authentication-agent-1 &
xrdb ~/.config/x11/Xresources
exec dwm
