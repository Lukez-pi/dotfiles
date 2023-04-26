#!/usr/bin/env bash

# Create all necessary folder for neovim
if [ ! -d "$VIMCONFIG" ]
	then
		mkdir "$VIMCONFIG"
		# install neovim plugin manager
		curl -fLo ~/dotfiles/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
