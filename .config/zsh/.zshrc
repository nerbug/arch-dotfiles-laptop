# Lines configured by zsh-newuser-install
HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob nomatch notify
unsetopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
# End of lines added by compinstall

autoload -Uz promptinit
promptinit
prompt walters

alias ls="ls --color=auto --group-directories-first -F"
alias ll="ls -alh"
alias mkdir="mkdir -pv"
alias cp="cp -i"
alias df="df -h"
alias free="free -m"
alias peaclock="peaclock --config-dir ~/.config/peaclock"
alias grep="grep --color=auto"
alias rm="rm -Iv"
alias vim="nvim"
# https://linuxhandbook.com/run-alias-as-sudo/
alias sudo="sudo "

# Set terminal colors from pywal if the currently running desktop environment is dwm
if [[ "$XDG_SESSION_DESKTOP" == "dwm" ]]; then
    (cat ~/.cache/wal/sequences &)
fi

clear-hist() {
    HISTSIZE=0 && rm "$XDG_DATA_HOME/zsh/history"
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
