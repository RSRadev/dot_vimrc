

colorscheme desert

set nu

execute pathogen#infect('bundle/{}')
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title
set nomodeline
set nobackup
set noundofile
set mouse=
set number " <- shows line numbers
set encoding=utf8
