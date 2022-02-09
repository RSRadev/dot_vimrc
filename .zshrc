export PATH=/usr/local/bin:$PATH

alias ll='ls -halG'
alias ls='ls -aG'

export PS1=" $USER %F{blue}%~%f
%F{green}-> %f "
RPROMPT="[%D{%f/%m/%y}|%@]"
