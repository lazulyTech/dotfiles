" Load .rc.vim files
set runtimepath+=~/.vim
let g:vim_home = expand('~/.vim/rc_vim')
runtime rc_vim/dein.rc.vim
" KeyMapping settings
runtime rc_vim/mappings.rc.vim
" Set views
runtime rc_vim/options.rc.vim
" Color
runtime rc_vim/color.rc.vim