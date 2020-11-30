# Manjaro dotfiles
Various dotfiles and settings for my Manjaro Linux installation.

* Scripts for my `dwm` status bar are in `~/.local/bin/statusbar/`
* Wallpaper setting script in `~/.local/bin/setbg`. This script is also used by `dwm` at startup to automatically set the wallpaper and color scheme. See the script for more info.
* Settings for various programs, such as `zsh`, `mpv` and so on, are in `~/.config/`
* Source code for `dwm`, `dwmblocks` (the status bar), `dmenu` and `st` (simple terminal) that I use are in `~/.config/suckless/`
* `dwm`:
    * Version 6.2
    * Patches that I've applied:
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
    * Patches that I've applied:
        * `borderoption` (under `border` patch) - adds border around the `dmenu` window
        * `center` - centers `dmenu` in the middle of the screen
        * `fuzzymatch` - adds support for fuzzy-matching
        * `grid` - adds the ability to render `dmenu`'s entries in a grid (`-g`)
        * `lineheight` - adds a flag (`-h`) to set the minimum height of `dmenu` lines
        * `numbers` - adds text which displays the number of matched and total items in the top right corner
* `st` (simple terminal):
    * Version 0.8.4
    * Patches that I've applied:
        * `alpha` - allows the user to have transparent terminals (requires `xcompmgr` or some other X compositor, such as `picom` to be running in the background, the startup script takes care of that)
        * `anysize` - smoothly changes the terminal's window size when adjusting window gaps
        * `clipboard` - sets the clipboard, rather than the primary buffer on selection (text from the clipboard can be pasted by clicking the scroll wheel)
        * `scrollback` - allows the user to scrollback the terminal output. I've also applied the `scrollback-mouse` patch so that I can scroll the terminal output back and forth using Shift and mouse wheel (by default)
* Rule, which allows setting the backlight by any user in the `video` group without requiring root access is in `/etc/udev/rules.d/90-backlight.rules`. This rule is needed to make the backlight keys work in `dwm`. You can add a user to the `video` group with `sudo gpasswd -a <user> video`
* `dwm` startup script in `/usr/local/bin/start-dwm.sh`
* Session configuration for `dwm` in `/usr/share/xsessions/dwm.desktop`. This allows setting the environment I want to log in to (`dwm` or KDE) at my login prompt.
* Fonts that are required:
    * Liberation Mono (for `st`). Should be installed by default
    * Helvetica Neue (for `mpv` subtitles). To use a different font, replace `sub-font` in `~/.config/mpv/mpv.conf`
    * Hack Nerd Font (for `dwm`). Available at https://www.nerdfonts.com

# Screenshots (may become out of date if I change my setup)
## KDE
![KDE screenshot](https://i.imgur.com/BbsYMKn.png "KDE screenshot")
## dwm
![dwm screenshot (floating layout)](https://i.imgur.com/krR8uzs.png "dwm screenshot")
