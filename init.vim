" -------------------------PLUGIN------------------------------
call plug#begin('~/AppData/Local/plugged')

Plug 'itchyny/lightline.vim'
" :NERDTree command
Plug 'preservim/nerdtree'
" give hex text colour
Plug 'ap/vim-css-color'
" COC - Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
" -------------------------COC-Config----------------------------------
" COC path
let g:coc_node_path = 'C://Program Files/nodejs/node'
" COC install modules
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp']
" TextEdit might fail if hidden is not set.
set hidden
" Don't pass message to | ins-completion-menu|.
set shortmess+=c
" Having longer updatetime leads to noticable delay and poor user experience
" (default 4000 ms)
set updatetime=100
" Use tab for trigger compleion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" : 
    \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') -1 
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <c-o> to trigger completion
inoremap <silent><expr> <c-o> coc#refresh()
" Make <CR> auto-select the first completion item and notify coc.vim to format
" on enter, <cr> could be remapped by other vim plugin
noremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location
" list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next) 
" To code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" -------------------------Keymap------------------------------
" NERDTree Keymaps ****
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Split navigation ****
" Move to split below
nnoremap <C-J> <C-W><C-J>
" Move to split above
nnoremap <C-K> <C-W><C-K>
"Move to split right
nnoremap <C-L> <C-W><C-L>
" Move to split left
nnoremap <C-H> <C-W><C-H>

