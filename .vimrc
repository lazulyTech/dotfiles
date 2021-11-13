
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

