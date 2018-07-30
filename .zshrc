# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt hist_ignore_all_dups
setopt hist_ignore_space

# keybind -v vim like
bindkey -v

# comp
#zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

setopt auto_cd
#setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob

setopt correct

autoload -Uz colors && colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

alias ls='ls --color=auto'

# cd run ls
# chpwd() { ls -ltrG }

# comp menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down_line_or_history
bindkey -M menuselect 'k' vi-up-line-or-histry
bindkey -M menuselect 'l' vi-forward-char

function __zsh__prompt {
	local RED="\[\033[0;31m\]"
	local RED='%{$fg[red]%}'
	local GREEN='%{$fg[green]%}'
	local RESET='$reset_color'
	if [ -n "$SSH_CONNECTION" ]; then
		printf '%s[%s]%s ' "$RED" "$(uname -n)" "$RESET"
	fi
	printf '%s%%~%s %%%% ' "$GREEN" "$RESET"
}

type prompt &> /dev/null && prompt off
setopt PROMPT_SUBST
PROMPT="$(__zsh__prompt)"
