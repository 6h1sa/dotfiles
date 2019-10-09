#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'

# tmux
[[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
    [[ -n "$ATTACH_ONLY" ]] && {
        tmux a 2>/dev/null || {
            cd && exec tmux
        }
        exit
    }

    tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
    exec tmux
}

if [[ `uname -a` == *Microsoft* ]]; then
  alias open='cmd.exe /c start'
fi

function __bash__prompt {
	local RED="\[\033[0;31m\]"
	local GREEN="\[\033[0;32m\]"
	local RESET="\[\033[0m\]"
	if [ -n "$SSH_CONNECTION" ]; then
		printf '%s%s[%s]%s ' "$RESET" "$RED" "$(uname -n)" "$RESET"
	fi
	printf '%s%s\w%s $ ' "$RESET" "$GREEN" "$RESET"
}


export PS1="$(__bash__prompt)"
