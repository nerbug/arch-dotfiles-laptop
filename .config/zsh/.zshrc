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
alias diff="diff --color=auto"
alias rm="rm -Iv"
# https://linuxhandbook.com/run-alias-as-sudo/
alias sudo="sudo "

# Set terminal colors from pywal if the currently running desktop environment is dwm
if [[ "$XDG_SESSION_DESKTOP" == "dwm" ]]; then
    (cat ~/.cache/wal/sequences &)
fi

clear-hist() {
    HISTSIZE=0 && rm "$XDG_DATA_HOME/zsh/history"
}

# Key bindings
# Uses the terminfo method (https://wiki.archlinux.org/index.php/Zsh#Key_bindings)
# Create a zkbd compatible hash. To add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Delete]="${terminfo[kdch1]}"
key[Shift-Tab]="${terminfo[kcbt]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

# Setup keys accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line        # Go to the beginning of the line with Home
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line              # Go to the end of the line with End
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode           # Enable overwrite mode with Insert
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char              # Delete character in front of cursor with Delete
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete    # Go through autocomplete items in reverse with Shift-Tab

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Only the past commands matching the current line up to the current cursor position will be shown when the Up or Down keys are pressed.
[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
