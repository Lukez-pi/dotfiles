#!/usr/bin/env bash

# Create all necessary folder for neovim
# note VIMCONFIG is set to ~/.config/nvim
if [ ! -d "$VIMCONFIG" ]
	then
		mkdir "$VIMCONFIG"
		# install neovim plugin manager
		curl -fLo ~/dotfiles/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

ln -sf "$DOTFILES_DIR/nvim/init.vim" "$VIMCONFIG"
ln -sf "$DOTFILES_DIR/nvim/ftplugin" "$VIMCONFIG"
ln -sf "$DOTFILES_DIR/nvim/autoload" "$VIMCONFIG"

mkdir -p "$VIMCONFIG/plugged"
