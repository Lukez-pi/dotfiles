" set runtimepath^=~/.vim runtimepath+=~/.vim/after
let g:python3_host_prog="/Users/lukezhu/miniconda3/bin/python3"

" highlight all searches
set hlsearch

" display number and relative line number (hybrid mode)
set number relativenumber

" To wrap lines visually
set wrap

" Tab in command mode displays all completions
set wildmenu
set wildmode=longest:full,full

" automatic toggling (turn off relative numbers when in insert mode)
:augroup numbertoggle
: autocmd!
: autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
: autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

" remap the escape key to jj in insert mode
inoremap jk <Esc>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

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
