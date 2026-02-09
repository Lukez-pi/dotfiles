" to disable mouse support in nvim 
set mouse=
let g:python3_host_prog="$CONDA_PYTHON_EXE"

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

" remap the escape key to jk or kj in insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" link that explains tabs vs softtabls: https://vi.stackexchange.com/a/28017
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on
syntax enable
syntax on
colorscheme vim
set foldenable
set foldmethod=indent

let mapleader = " "
nnoremap <leader>sv :source $MYVIMRC<CR>

if exists('g:vscode')
    " VSCode extension
else
	call plug#begin('$VIMCONFIG/plugged')
	Plug 'lervag/vimtex'
	Plug 'sirver/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'neomake/neomake'
    Plug 'Mxrcon/nextflow-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'github/copilot.vim'
call plug#end()
endif

" source every plugin configs
for file in split(glob('$VIMCONFIG/pluggedconf/*.nvimrc'), '\n')
	exe 'source' file
endfor
