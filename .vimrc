colorscheme desert
map<F2> :Vexplore
map<F5> :set nu!
map<F9> :w !perl -I/usr/local/www/lib/perl -cT <cr>

syntax on
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")

set title
set nomodeline
set nobackup
set noundofile
set mouse=
set number " <- shows line numbers
set encoding=utf8
set keywordprg=perldoc\-f
