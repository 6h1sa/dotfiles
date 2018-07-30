set termguicolors

set number


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ia/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ia/.cache/dein')
  call dein#begin('/home/ia/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ia/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  call dein#add('mattn/emmet-vim')
  call dein#add('tomasr/molokai')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" color scheme
syntax on
colorscheme molokai
