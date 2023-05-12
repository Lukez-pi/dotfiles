set runtimepath^=~/.vim runtimepath+=~/.vim/after
let $packpath = $runtimepath
source ~/.vimrc

let g:python3_host_prog="/Users/lukezhu/miniconda3/bin/python3"

filetype plugin indent on
syntax enable
let mapleader = " "

if exists('g:vscode')
    " VSCode extension
else
	call plug#begin('$VIMCONFIG/plugged')
	Plug 'lervag/vimtex'
	Plug 'sirver/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'neomake/neomake'
	call plug#end()
endif

" source every plugin configs
for file in split(glob('$VIMCONFIG/pluggedconf/*.nvimrc'), '\n')
	exe 'source' file
endfor
