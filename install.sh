#!/bin/bash -e
DOT_DIRECTORY="${HOME}/dotfiles"

cd ${DOT_DIRECTORY}
for f in .??*
  do
    [[ "${f}" = ".git" ]] && continue
    [[ "${f}" = ".DS_Store" ]] && continue

    echo "$f"
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
