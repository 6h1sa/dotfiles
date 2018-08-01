
typeset -U path

if [[ -e ~/.rbenv ]] ; then 
  path=(~/.rbenv $path[@])
  eval "$(rbenv init - zsh)"
fi
