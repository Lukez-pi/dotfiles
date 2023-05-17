let maplocalleader = " "

" custom shortcut for compiling
nmap <localleader>l <Plug>(vimtex-compile)
" custom shortcut for forward search
nmap <localleader>v <Plug>(vimtex-view)
" custom shortcut for cleaning
nmap <localleader>c <Plug>(vimtex-clean)

" navigate within wrapped lines
" link: https://stackoverflow.com/a/9131526
nnoremap j gj
nnoremap k gk

" to trigger inverse search, press shift+cmd+left click
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
