#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

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


trycreatedir "$HOME/.vim"
trycreatedir "$HOME/.vim/bundle"
trycreatedir "$HOME/.vim/undofiles"
trycreatedir "$HOME/.vim/swapfiles"

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "Cloning Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim" 1>/dev/null 2>/dev/null || echoerr "Failed to clone Vundle"
fi

trysymlink "$DOTFILES_DIR/vimrc"        "$HOME/.vim/vimrc"
trysymlink "$DOTFILES_DIR/bashrc"       "$HOME/.bashrc"
trysymlink "$DOTFILES_DIR/tmux.conf"    "$HOME/.tmux.conf"
trysymlink "$DOTFILES_DIR/sshconfig"    "$HOME/.ssh/config"
trysymlink "$DOTFILES_DIR/compton.conf" "$HOME/.compton.conf"
trysymlink "$DOTFILES_DIR/i3/"          "$HOME/.config/i3"
trysymlink "$DOTFILES_DIR/fonts/"       "$HOME/.fonts"

unset DOTFILES_DIR
