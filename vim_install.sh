#!/bin/bash
if [ -d $HOME/.vim ]; then
	echo "backuping your .vim to .vim_bk";
	if [ -d $HOME/.vim_bk ]; then
		rm -rf $HOME/.vim_bk;
	fi
	mv $HOME/.vim{,_bk};
fi

git clone https://github.com/zloyded/vimrc.git $HOME/.vim;

if [ -d $HOME/.vim/bundle/Vundle.vim ]; then
	echo "Vundle Installed"
else
	echo "Add Vundle Plugin manager";
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
cp $HOME/.vim/vimrcs/vimrc $HOME/.vimrc

echo "Installing Plugins";

echo "Installed .vimrc"
echo "Now run vi(m) to install plugins"
echo "vim +PluginInstall"
