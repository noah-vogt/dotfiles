#
# Noah's ~/.bash_profile
#

# set XDG directories
export XDG_CONFIG_HOME="$HOME/.config"

# ~/ cleanup
export VIMINIT="set nocp | source $XDG_CONFIG_HOME/vim/vimrc"
export LESSHISTFILE='-'
export XAUTHORITY="$XDG_CONFIG_HOME/Xauth/auth"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"


[[ -f "$XDG_CONFIG_HOME/bash/bashrc" ]] && . "$XDG_CONFIG_HOME/bash/bashrc"
