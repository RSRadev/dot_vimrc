colorscheme delek

map<F2> :NERDTree
autocmd BufWinEnter *.py nnoremap <F8> :w<CR>:!python3 %:p<cr>
map<F9> :w !perl -I/usr/local/www/lib/perl -cT <cr>
map<F7> :w !node
map<F5> :set nu! 

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
set tabstop=4
