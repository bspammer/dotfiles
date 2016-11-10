#!/bin/bash

ln -s "$HOME/.dotfiles/.bashrc"        "$HOME"
ln -s "$HOME/.dotfiles/.compton.conf"  "$HOME"
ln -s "$HOME/.dotfiles/.fonts"         "$HOME"
ln -s "$HOME/.dotfiles/.vimrc"         "$HOME"
ln -s "$HOME/.dotfiles/.i3"            "$HOME"


mkdir -p "$HOME"/.vim/bundle
mkdir -p "$HOME"/.vim/undofiles
cd "$HOME/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git
