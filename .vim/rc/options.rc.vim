set nowrap
set wrap

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
let g:tex_conceal = ''

""autosave setting (not plugin)
"augroup vimrc-auto-save
"	autocmd!
"	autocmd InsertLeave * w
"augroup END

" coc.nvim setting
"    see 
set encoding=utf-8

set hidden

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300

set shortmess+=c

let g:python3_host_prog = '~/.virtualenvs/deps3/bin/python'

if has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif

set rtp+=/opt/homebrew/opt/fzf

"augroup vimrc
"	autocmd!
"	autocmd BufWritePost *.tex !pwd ; ptex2pdf -l *.tex ; open *.pdf -a /Applications/Skim.app/Contents/MacOS/Skim
"augroup END

"off IME if you leave insert mode
if has('mac')
	let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
	augroup MyIMEGroup
		autocmd!
		autocmd InsertLeave * :call system(g:imeoff)
	augroup END
endif

