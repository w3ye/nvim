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
" removing --INSERT-- at the bottom
set noshowmode

" -------------------------Plugin config------------------------------
" setting colour scheme for lightline
let g:lightline ={
    \ 'colorscheme': 'darcula',
    \ }

" Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" NERDTree changing default arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" -------------------------Keymap------------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
