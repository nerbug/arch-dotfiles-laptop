#!/bin/sh

export XDG_CURRENT_DESKTOP=KDE

setbg &
(sleep 1 && picom --experimental-backends) &
dwmblocks &
/usr/lib/polkit-kde-authentication-agent-1 &
xrdb ~/.config/x11/Xresources
exec dwm
