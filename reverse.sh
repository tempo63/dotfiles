#!/bin/bash
############
#.make.shI
############

home=~/
dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .config .vimrc"


cd $home

for file in $files; do
    rm ~/.$file
    cp -r ~/$olddir/$file $home
done
