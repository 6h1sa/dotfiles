#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -e ~/.rbenv ]] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

export HISTSIZE=2000
#export HISTCONTROL=ignoredups
