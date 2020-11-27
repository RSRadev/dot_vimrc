#!/usr/bin/perl

my $rc_file = '/home/raddy/.vimrc';
my $vimrc =q(

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
); 

open(FH, '>', $rc_file) or die $!;

print FH $vimrc;

close FH;

`mkdir -p ~/.vim/autoload ~/.vim/bundle`;

`curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`;

`git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree`; 
