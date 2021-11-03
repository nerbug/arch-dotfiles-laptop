#! /bin/sh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export LESSHISTFILE="-"

export EDITOR="nvim"
export VISUAL="nvim"

export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

export PATH="$PATH:$HOME/.local/bin"
