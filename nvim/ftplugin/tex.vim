let maplocalleader = " "
" custom shortcut for forward search
nmap <localleader>v <Plug>(vimtex-view)
" custom shortcut for forward search
nmap <localleader>c <Plug>(vimtex-clean)

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'latexmk'

" custom function for returning focus after inverse search
" replace `Terminal` with name of terminal application
" link: https://www.ejmastnak.com/tutorials/vim-latex/pdf-reader/#refocus-nvim-macos-inverse
function! s:TexFocusVim() abort
	silent execute "!open -a Terminal"
	redraw!
endfunction

" autocommand group runs the refocus function above 
augroup vimtex_event_focus
	au!
	au User VimtexEventViewReverse call s:TexFocusVim()
augroup END
