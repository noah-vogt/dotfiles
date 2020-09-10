# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# setting variables
export EDITOR=vim
export PATH=$PATH:~/.config/setup/scripts/

# adding some colors to the world
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ccat='highlight --out-format=ansi' # like cat, but with syntax highlighting

# human readable pls
alias du='du -h'
alias df='du -h'
alias free='free -h'

# devour (swallow) windows
alias mu='devour mupdf'
alias xu='devour xournalpp'

# basic system aliases
alias p='sudo pacman'
alias sc='sudo systemctl'
alias sdn='shutdown now'
alias xo='xdg-open'
alias q='exit'
alias sx='startx'

# frequently used programs aliases
alias v='vim'
alias r='ranger'
alias ca='calcurse'
alias py='python'

# copy and paste using xclip package
alias copy="xclip -sel clip"
alias paste="xclip -out -sel clip"

# quick acces to my latex templates 
alias sl='sh ~/.config/setup/templates/latex/school'

# using bash colors for PS1
PROMPT_COMMAND='PS1="\[\033[01;97m\][\[\033[01;96m\]\u\[\033[01;97m\]@\[\033[01;91m\]\h \[\033[00m\]\[\033[01;32m\]\W\[\033[00m\]\[\033[01;97m\]]\[\033[01;90m\]\$\[\033[00m\] "'
