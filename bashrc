# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set LSCOLORS
eval "$(dircolors $HOME/.dotfiles/system/dir_colors)"

for DOTFILE in $HOME/.dotfiles/system/{aliases,exports,functions,inputrc}
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Check colors
if [ $HOSTNAME = 'arch-vm' ]; then
    export HOST_COLOR="\[\033[1;36m\]"
fi
if [ $HOSTNAME = 'drooble' ]; then
    export HOST_COLOR="\[\033[1;34m\]"
fi
if [ $HOSTNAME = 'davinci' ]; then
    export HOST_COLOR="\[\033[1;31m\]"
fi


# Color the colon red if root
COLON_COLOR='0m'
if [ ${UID} -eq 0 ]; then
    COLON_COLOR='1;31m'
fi
PS1=`echo -ne "$HOST_COLOR\h\[\033[00m\]\[\e[$COLON_COLOR\]:\[\033[01;32m\]\w\[\033[00m\]\\[\033[01;33m\]\$\[\033[00m\] "`

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
