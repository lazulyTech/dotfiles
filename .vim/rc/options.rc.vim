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

let g:tex_flavor = "latex"

"autosave setting (not plugin)
augroup vimrc-auto-save
  autocmd!
  autocmd InsertLeave * w
augroup END

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

