#!/bin/bash
if [ test -d $HOME/.vim ]; then
	echo "backuping your .vim to .vim_bk";
	mv .vim{,_bk};
fi

git clone https://github.com/zloyded/vimrc.git .vim;

if [ test -a $HOME/.vim/bundle/Vundle.vim ]; then
	echo "Vundle Installed"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp .vimrc $HOME/.vimrc

echo "Installed"
