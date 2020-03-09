#!/usr/bin/perl

my $rc_file = '/home/raddy/.vimrc';
my $conf =q(
); 

open(FH, '>', $rc_file) or die $!;

print FH $conf;

close FH;

`mkdir -p ~/.vim/autoload ~/.vim/bundle`;

`curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`;

`git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree`; 
