colorscheme cobalt
map<F2> :NERDTree
map<F5> :set nu! 
map<F4> :w !perl -I/usr/local/www/lib/perl -cT <cr>

autocmd BufWinEnter *.py nnoremap <F3> :w<CR>:!python3 %:p<CR>

execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
    
set title
set nomodeline
set nobackup
set noundofile
set mouse=
set number " <- shows line numbers
set encoding=utf8
set keywordprg=perldoc\-f

