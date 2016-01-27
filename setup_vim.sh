#!/bin/bash

if [ ! -d ~/.vim/bundle/Vundle.vim ];then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

timeStramp=`date +%Y%m%d%H%M`

if [ -f ~/.vim/vimrc ];then
    mv ~/.vim/vimrc ~/.vim/vimrc_$timeStramp
fi

ln ./vimrc ~/.vim/vimrc
vim +PluginInstall +qall

