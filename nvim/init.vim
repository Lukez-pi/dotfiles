set runtimepath^=~/.vim runtimepath+=~/.vim/after
let $packpath = $runtimepath
source ~/.vimrc

let g:python3_host_prog="/Users/lukezhu/opt/anaconda3/bin/python"

filetype plugin indent on
syntax enable
let mapleader = " "

if exists('g:vscode')
    " VSCode extension
else
	call plug#begin(stdpath('data') . '/plugged')
	Plug 'lervag/vimtex'
	call plug#end()
endif
