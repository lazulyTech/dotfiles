set nowrap

set hlsearch
set ignorecase
set smartcase

set autoindent

set ruler
set number
set list
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed

set mouse=a

set noswapfile

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
            \ quit | endif


" coc.nvim setting
"    see 
set encoding=utf-8

set hidden

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300

set shortmess+=c

if has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif

