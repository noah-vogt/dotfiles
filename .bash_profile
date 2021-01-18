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
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

[[ -f ~/.bashrc ]] && . .bashrc
