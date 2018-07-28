#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -e ~/.rbenv/ ]] && export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)"
