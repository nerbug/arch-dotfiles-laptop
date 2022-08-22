#!/bin/sh

# Use settings from KDE for Qt apps (alternatively, setup qt5ct)
export XDG_CURRENT_DESKTOP=KDE

dwmblocks &
xrdb ~/.config/x11/Xresources
setbg &
dunst &
nm-applet --indicator &
(sleep 1 && picom) &
/usr/lib/polkit-kde-authentication-agent-1 &
exec dwm
