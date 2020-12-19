#!/bin/sh

# Fake QT applications into thinking they are running under KDE, so that it uses KDE's config files.
# Probably temporary, until I find a less hacky solution.
export XDG_CURRENT_DESKTOP=KDE

setbg &
(sleep 1 && picom --experimental-backends) &
dwmblocks &
/usr/lib/polkit-kde-authentication-agent-1 &
xrdb ~/.config/x11/Xresources
exec dwm
