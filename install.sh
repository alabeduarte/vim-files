#!/bin/bash

# Downloads Vundle for manage plugins dependencies
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Creates symbolic link
rm ~/.vimrc
ln -s `pwd`/.vimrc ~/.vimrc

# Installs vundle plugins
vim +PluginInstall +qall
