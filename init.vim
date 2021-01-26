" -------------------------PLUGIN------------------------------
call plug#begin('~/AppData/Local/plugged')

Plug 'itchyny/lightline.vim'
" :NERDTree command
Plug 'preservim/nerdtree'
" give hex text colour
Plug 'ap/vim-css-color'

call plug#end()

" -------------------------Config------------------------------
" number lines
set nu
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
