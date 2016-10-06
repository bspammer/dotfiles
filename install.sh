#!/bin/bash

ln -sf "$HOME"/.dotfiles/.bashrc        "$HOME"
ln -sf "$HOME"/.dotfiles/.compton.conf  "$HOME"
ln -sf "$HOME"/.dotfiles/.fonts         "$HOME"
ln -sf "$HOME"/.dotfiles/.vimrc         "$HOME"
ln -sf "$HOME"/.dotfiles/.i3            "$HOME"


mkdir -p "$HOME"/.vim/bundle
mkdir -p "$HOME"/.vim/undofiles
cd "$HOME/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git
