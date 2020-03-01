colorscheme cobalt

map<F2> :NERDTree
map<F5> :set nu!

#CHECK PERL SYNTAX
map<F9> :w !perl -I/usr/local/www/lib/perl -cT <cr>

#CHECK PYTHON SYNTAX + COMPILE
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.    stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z    %[%^\ ]%\\@=%m
autocmd BufRead *.py nmap <F8> :!python %<CR>

#PATHOGEN
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
set softtabstop=3
