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
    
    if has('nvim')
        "add setting files
        call dein#load_toml(g:vim_home.'/dein.toml',         {'lazy': 0})
        call dein#load_toml(g:vim_home.'/dein_likeide.toml', {'lazy': 1})
    "    call dein#load_toml(s:rc_dir.'/dein_latex.toml',   {'lazy': 1})
    endif
    if has('vim')
        
    endif
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif

filetype plugin indent on
syntax enable

