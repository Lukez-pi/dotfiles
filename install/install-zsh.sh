#!/usr/bin/env bash

mkdir -p "$ZDOTDIR"

ln -sf "$DOTFILES_DIR/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES_DIR/zsh/zshrc" "$ZDOTDIR/.zshrc"

