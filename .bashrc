# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# setting variables
export EDITOR=vim
export BROWSER=firefox
export PATH=$PATH:~/.scripts/:~/.local/bin

# adding some colors to the world
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ccat='highlight --out-format=ansi' # like cat, but with syntax highlighting

# human readable pls
alias du='du -h'
alias df='df -h'
alias free='free -h'

# devour (swallow) windows
alias mu='devour mupdf'
alias xu='devour xournalpp'
alias v='devour vlc'
alias ok='devour okular'
alias si='devour sxiv'
alias lo='devour libreoffice'

# basic system aliases
alias p='sudo pacman'
alias sc='sudo systemctl'
alias sus='sudo systemctl suspend'
alias sdn='shutdown now'
alias xo='xdg-open'
alias q='exit'
alias sx='startx'
alias ll='ls -l'
alias la='ls -a'

# reload configs
alias sb='source ~/.bashrc'

# frequently used programs aliases
alias r='ranger'
alias ca='calcurse'
alias py='python'

# copy and paste using xclip package
alias copy="xclip -sel clip"
alias paste="xclip -out -sel clip"

# lockscreen
alias lock='betterlockscreen -s dim'

# faster directory switching
alias ..='cd ..'
alias ...='cd ../..'

# safety features
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# git aliases
alias gs='git status'
alias add='git add'
alias commit='git commit'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias log='git log'
alias remote='git remote'
alias tag='git tag'
alias checkout='git checkout'
alias merge='git merge'

# quick acces to my latex templates 
export PATH=$PATH:~/.config/setup/templates/latex

# using bash colors for PS1
PROMPT_COMMAND='PS1="\[\033[01;97m\][\[\033[01;96m\]\u\[\033[01;97m\]@\[\033[01;91m\]\h \[\033[00m\]\[\033[01;32m\]\W\[\033[00m\]\[\033[01;97m\]]\[\033[01;95m\]\$\[\033[00m\] "'
