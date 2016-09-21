#!/bin/bash

cd $HOME/.dotfiles
if [ -d .git ]; then
    git pull
else
    echo "Couldn't find .git directory"
fi
cd - > /dev/null
