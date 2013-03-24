call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set shiftwidth=2

set tabstop=2
set expandtab
set autoindent

set selectmode=mouse

autocmd BufWritePre * :%s/\s\+$//e
set textwidth=80
set wrap
set linebreak
" note trailing space at end of next line
set showbreak=>\ \ \
" colorscheme zenburn
set number
set cmdheight=2

set backupdir=~/.vim/backup
filetype indent off

set showcmd
set incsearch

function TrimEndLines()
let save_cursor = getpos(".")
  :silent! %s#\($\n\s*\)\+\%$##
  call setpos('.', save_cursor)
endfunction

a
