" mapping scroll up and down to the shift key
map <S-j> <C-E>
map <S-k> <C-Y>

" display number and relative line number (hybrid mode)
set number relativenumber

"automatic toggling (turn off relative numbers when in insert mode)
:augroup numbertoggle
: autocmd!
: autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
: autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END
