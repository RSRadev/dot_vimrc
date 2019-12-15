colorscheme ron
map<F2> :NERDTree
map<F5> :set nu!
map<F9> :w !perl -I/usr/local/www/lib/perl -cT <cr>
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.    stderr=sys.stdout;\ py_compile.compile(r'%')\"
  6 autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z    %[%^\ ]%\\@=%m
  7 autocmd BufRead *.py nmap <F8> :!python %<CR>


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
