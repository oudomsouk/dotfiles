call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/tomasr/molokai.git'
call plug#end()

let g:rehash256 = 1

set background=dark
colorscheme molokai

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
set ai
set number
set relativenumber
set gcr=a:blinkon0  
set scrolloff=5
set guicursor+=n-v-c:blinkon0
set nohlsearch
syntax on
