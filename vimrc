" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'


set shiftwidth=2
set tabstop=2
set expandtab

set autoindent

set selectmode=mouse

set textwidth=80
set wrap
set linebreak

" note trailing space at end of next line
set showbreak=>\ \ \

colorscheme zenburn
" colorscheme default

set number
set cmdheight=1
syntax enable
set backupdir=~/.vim/backup
filetype indent off

set showcmd
set incsearch

" Function that removes extra newlines from the document.
function TrimEndLines()
let save_cursor = getpos(".")
  :silent! %s#\($\n\s*\)\+\%$##
  call setpos('.', save_cursor)
endfunction

" Remove unnecessary whitespace / newlines from the document.
autocmd BufWritePre * call TrimEndLines()
autocmd BufWritePre * :%s/\s\+$//e

" Use the man pages in a separate tab (:Man <manpage>)
runtime! ftplugin/man.vim
filetype plugin indent on
syntax on

" Spell checking
" setlocal spell spelllang=en_us

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

" Single character insert with space.
nmap <Space> i_<Esc>r

" Underscore is a delimiter.
set iskeyword-=_
