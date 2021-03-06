#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
XDG_DATA_HOME="$HOME/.local/share"
XDG_CONFIG_HOME="$HOME/.config"

function echoerr {
    echo "$@" 1>&2
}

function trycreatedir {
    if [ ! -d "$1" ]; then
        echo "Creating directory $1..."
        mkdir "$1" 1>/dev/null 2>/dev/null || echoerr "Failed to create directory $1"
    fi
}

function trysymlink {
    echo "Linking $1 to $2..."
    if [ ! -e $2 ]; then
        ln -s "$1" "$2" 1>/dev/null 2>/dev/null || echoerr "Failed to create link from $1 to $2"
    else
        echoerr "$2 already exists, not linking"
    fi
}


trycreatedir "$XDG_CACHE_HOME"
trycreatedir "$XDG_CACHE_HOME"/vim
trycreatedir "$XDG_CACHE_HOME"/vim/undofiles
trycreatedir "$XDG_CACHE_HOME"/vim/swapfiles
trycreatedir "$XDG_CACHE_HOME"/vim/backup
trycreatedir "$XDG_CONFIG_HOME"

trysymlink "$DOTFILES_DIR/bashrc"           "$HOME/.bashrc"
trysymlink "$DOTFILES_DIR/tmux.conf"        "$HOME/.tmux.conf"
trysymlink "$DOTFILES_DIR/sshconfig"        "$HOME/.ssh/config"
trysymlink "$DOTFILES_DIR/compton.conf"     "$HOME/.compton.conf"
trysymlink "$DOTFILES_DIR/Xresources"       "$HOME/.Xresources"
trysymlink "$DOTFILES_DIR/fonts/"           "$HOME/.fonts"
trysymlink "$DOTFILES_DIR/i3/"              "$XDG_CONFIG_HOME/i3"
trysymlink "$DOTFILES_DIR/vim/"             "$XDG_CONFIG_HOME/vim"
trysymlink "$DOTFILES_DIR/cava/"            "$XDG_CONFIG_HOME/cava"
trysymlink "$DOTFILES_DIR/fish/"            "$XDG_CONFIG_HOME/fish"
trysymlink "$DOTFILES_DIR/globalgitconfig"  "$HOME/.gitconfig"
trysymlink "$DOTFILES_DIR/globalgitignore"  "$HOME/.gitignore"

unset DOTFILES_DIR
