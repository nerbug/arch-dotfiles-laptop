# Arch Linux dotfiles
Various dotfiles, scripts and other config files for my Arch Linux installation.

* Various scripts in `.local/bin/` (setting the wallpaper, video playback from the `~/Videos` directory using `mpv`, status bar blocks, etc.) Make sure to set them as executable with `chmod u+x` if they already aren't.
* Wallpaper setting script in `.local/bin/setbg` which sets the wallpaper using `feh` and a fitting color scheme with `python-pywal`. This script is also ran at `dwm` startup, using the image at `~/.config/dwm-background` as the wallpaper (the file can also be a symlink as well).
* Settings for various programs, such as `zsh`, `mpv` and so on, are in `.config/`.
* Source code for `dwm`, `dwmblocks` (the status bar), `dmenu` and `st` with various patches applied are in `.config/suckless/`
* `dwm`:
    * Version 6.2
    * Applied patches:
        * `fullgaps` - adds gaps between windows and allows to configure them at run-time.
        * `shiftview` - allows the user to rotate the currently selected tag (http://lists.suckless.org/dev/1104/7590.html)
        * `swallow` - adds window swallowing functionality. As an example, starting `mpv` or `sxiv` will now "hide" the terminal window that started that process. This patch helps users spawning a lot of graphical programs from their command line by avoiding cluttering the screen with many unusable terminals.
        * `restartsig` - allows `dwm` to be restarted with a keybinding (default: `MOD` + `CTRL` + `SHIFT` + `Q`)
        * `attachaside` - new clients (windows) appear in the stack rather than in the master
        * `cyclelayouts` - cycle through all available layouts using keybindings (defaults: `MOD` + `CTRL` + `,` and `MOD` + `CTRL` + `.`)
        * `gridmode` - adds an extra layout called `grid` in which the windows are arranged in a grid of equal sizes
        * `rotatestack` - rotates a window through the stack, in either direction (defaults: `MOD` + `SHIFT` + `j` and `MOD` + `SHIFT` + `k`)
        * `statuspadding` - horizontal and vertical padding in the status bar are now configurable options
* `dwmblocks` - modular status bar for dwm (https://github.com/torrinfail/dwmblocks)
* `dmenu`:
    * Version 5.0
    * Applied patches:
        * `borderoption` (under `border` patch) - adds border around the `dmenu` window
        * `center` - centers `dmenu` in the middle of the screen
        * `fuzzymatch` - adds support for fuzzy-matching
        * `grid` - adds the ability to render `dmenu`'s entries in a grid (`-g`)
        * `lineheight` - adds a flag (`-h`) to set the minimum height of `dmenu` lines
        * `numbers` - adds text which displays the number of matched and total items in the top right corner
* `st` (simple terminal):
    * Version 0.8.4
    * Applied patches:
        * `alpha` - allows the user to have transparent terminals (requires `xcompmgr` or some other X compositor, such as `picom` to be running in the background, the startup script takes care of that)
        * `anysize` - smoothly changes the terminal's window size when adjusting window gaps
        * `clipboard` - sets the clipboard, rather than the primary buffer on selection (text from the clipboard can be pasted by clicking the scroll wheel)
        * `scrollback` - allows the user to scrollback the terminal output. I've also applied the `scrollback-mouse` patch so that I can scroll the terminal output back and forth using Shift and mouse wheel (by default)
* Normally, setting the monitor brightness using `acpilight` (or `xorg-xbacklight`) requires root access. This is not ideal when you have a minimal WM environment (like `dwm`) and you set up the ability to make the backlight dimmer or brighter using the monitor brightness up and down keys on the keyboard. However, there is a `udev` rule, which allows setting the backlight by any user in the `video` group without requiring root access. It is in `etc/udev/rules.d/90-backlight.rules`. You can add a user to the `video` group with `sudo gpasswd -a <user> video`
* `dwm` startup script in `/usr/local/bin/start-dwm.sh`
* Session configuration for `dwm` in `/usr/share/xsessions/dwm.desktop`. This allows setting my session to use `dwm` at the login prompt (in my case, `SDDM`).
* Config file for SDDM's `Sugar Candy` theme in `usr/share/sddm/themes/sugar-candy/`.
* Fonts that are required:
    * Liberation Mono (for `st`). Package: `ttf-liberation`.
    * Helvetica Neue. I use it throughout my desktop, for subtitles in `mpv` and `vlc`. It's used both by Qt applications (configured through KDE's system settings) and GTK applications (.config/gtk-2.0/gtkrc). Copied over from my Windows install (https://wiki.archlinux.org/index.php/Microsoft_fonts#Using_fonts_from_a_Windows_partition). If Helvetica Neue is not installed, the OS should be able to use some other font instead.
    * Hack Nerd Font (for `dwm`). Available at https://www.nerdfonts.com or by installing `nerd-fonts-hack` from the AUR.
* List of all explicitly installed packages on my system (with `pacman -Qe`) are in `pkglist.txt`. I use `paru` as my AUR helper.

I haven't pushed any of KDE's config files to this, as there are way too many of them and everything' set through the GUI anyway (e.g. fonts, whether you single click or double click files to open them in the file manager, icons, colors and so on).
# Screenshots
## KDE
![KDE screenshot](https://i.imgur.com/5UhDyDd.png "KDE screenshot")
## dwm
![dwm screenshot](https://i.imgur.com/jimJWx6.png "dwm screenshot")
