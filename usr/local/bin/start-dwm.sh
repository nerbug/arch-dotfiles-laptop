#!/bin/sh

# Use settings from KDE for Qt apps (alternatively, setup qt5ct)
export XDG_CURRENT_DESKTOP=KDE

setbg &
(sleep 1 && picom --experimental-backends) &
dwmblocks &
/usr/lib/polkit-kde-authentication-agent-1 &
xrdb ~/.config/x11/Xresources
exec dwm
