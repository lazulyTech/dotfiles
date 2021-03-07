if &compatible
    set nocompatible
endif

augroup MyAutoCmd
    autocmd!
augroup END

let s:rc_dir = expand('~/.vim/rc')
let s:dein_dir = expand('~/.cache/dein')

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    
    "add setting files
    call dein#load_toml(s:rc_dir.'/dein.toml',         {'lazy': 0})
    call dein#load_toml(s:rc_dir.'/dein_likeide.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable

