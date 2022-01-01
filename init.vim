
" Load .rc.vim files
set runtimepath+=~/.vim
if has('nvim')
    let g:vim_home = expand('~/.vim/rc')
    "dein settings
    runtime rc/dein.rc.vim
    "KeyMapping settings
    runtime rc/mappings.rc.vim
    "set views
    runtime rc/options.rc.vim
endif
if !has('nvim')
    let g:vim_home = expand('~/.vim/rc_vim')
    runtime rc_vim/dein.rc.vim
    "KeyMapping settings
    runtime rc_vim/mappings.rc.vim
    "set views
    runtime rc_vim/options.rc.vim

endif

