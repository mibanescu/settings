#!/bin/bash

# Create all the symlinks
for file in .vimrc .vim
do
    if [ -h ~/${file} ] || [ -e ~/${file} ]; then
        rm ~/$file
    fi
    ln -s ${PWD}/$file ~/$file
done
echo "rc files linked"

git submodule update --init --recursive
