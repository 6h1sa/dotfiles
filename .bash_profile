#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -e ~/.rbenv ]] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if type opam >/dev/null 2>&1; then
  eval "$(opam env)"
fi

export HISTSIZE=2000
#export HISTCONTROL=ignoredups

