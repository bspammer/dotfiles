#!/bin/bash

echoerr() { echo "$@" 1>&2; }


ln -s "$HOME/.dotfiles/.bashrc"        "$HOME"
ln -s "$HOME/.dotfiles/.compton.conf"  "$HOME"
ln -s "$HOME/.dotfiles/.fonts"         "$HOME"
ln -s "$HOME/.dotfiles/.vimrc"         "$HOME"
ln -s "$HOME/.dotfiles/.i3"            "$HOME"
ln -s "$HOME/.dotfiles/.tmux.conf"     "$HOME"
ln -s "$HOME/.dotfiles/.ssh/config"    "$HOME/.ssh"


mkdir -p "$HOME"/.vim/bundle
mkdir -p "$HOME"/.vim/undofiles
mkdir -p "$HOME"/.vim/swapfiles
cd "$HOME/.vim/bundle"
if [ ! -d Vundle.vim ]
then
    echoerr "Attempting to clone Vundle plugin..."
    if git clone https://github.com/VundleVim/Vundle.vim.git; then
        echoerr "Successfully cloned Vundle plugin"
    else
        echoerr "Could not clone Vundle plugin - internet down?"
    fi
else
    echoerr "Vundle plugin already exists, skipping..."
fi
