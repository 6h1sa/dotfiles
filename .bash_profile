#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -e ~/.rbenv/ ]] && export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)"

export HISTSIZE=2000
#export HISTCONTROL=ignoredups
