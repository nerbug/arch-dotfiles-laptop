#!/bin/sh

export QT_STYLE_OVERRIDE=Breeze

setbg &
(sleep 1 && picom --experimental-backends) &
dwmblocks &
/usr/lib/polkit-kde-authentication-agent-1 &
xrdb ~/.config/x11/Xresources
exec dwm
