set background=dark
syntax on
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

au MyAutoCmd VimEnter * nested colorscheme iceberg

augroup TransparentBG
    autocmd!
    autocmd Colorscheme * highlight Normal ctermbg=none
    autocmd Colorscheme * highlight NonText ctermbg=none
    autocmd Colorscheme * highlight LineNr ctermbg=none
    autocmd Colorscheme * highlight Folded ctermbg=none
    autocmd Colorscheme * highlight EndOfBuffer ctermbg=none 
augroup END

colorscheme iceberg
