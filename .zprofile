
typeset -U path

if [[ -e ~/.rbenv ]] ; then 
  path=(~/.rbenv $path[@])
fi
