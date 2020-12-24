#!/bin/sh

# Use settings from KDE for Qt apps (alternatively, setup qt5ct)
export XDG_CURRENT_DESKTOP=KDE

dwmblocks &
setbg &
dunst &
nm-applet --indicator &
(sleep 1 && picom --experimental-backends) &
/usr/lib/polkit-kde-authentication-agent-1 &
xrdb ~/.config/x11/Xresources
exec dwm
