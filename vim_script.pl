#!/usr/bin/perl

my $rc_file = '/home/raddy/.vimrc';
my $conf =q(colorscheme cobalt
map<F2> :NERDTree
map<F5> :set nu!
map<F9> :w !perl -I/usr/local/www/lib/perl -cT <cr>
		
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.    stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z    %[%^\ ]%\\@=%m
autocmd BufRead *.py nmap <F8> :!python %<CR>
		
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
set keywordprg=perldoc\-f); 

open(FH, '>', $rc_file) or die $!;

print FH $conf;

close FH;

`mkdir -p ~/.vim/autoload ~/.vim/bundle`;

`curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`;

`git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree`; 

`git clone git@github.com:gkjgh/cobalt.git`;

`cp ~/colors /home/raddy/.vim/`;
