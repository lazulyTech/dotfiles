source ~/dotfiles/nvim/mappings.rc.vim
source ~/dotfiles/nvim/options.rc.vim

packadd vim-jetpack
call jetpack#begin()
    "Jetpack 'tani/vim-jetpack', { 'opt': 1 }
    call jetpack#add('tani/vim-jetpack', { 'opt': 1 })
    " Styles
    call jetpack#add('vim-airline/vim-airline', {'merged': 0})
    call jetpack#add('vim-airline/vim-airline-themes')
    call jetpack#add('tomasr/molokai')
    call jetpack#add('ryanoasis/vim-devicons')
    call jetpack#add('mhinz/vim-startify')
    call jetpack#add('nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'})

    " Parentheses Completion
    call jetpack#add('cohama/lexima.vim')

    " Completion
    call jetpack#add('vim-denops/denops.vim')
    call jetpack#add('Shougo/ddc.vim', {'depends': 'denops.vim'})
    " ddc-sources
    call jetpack#add('Shougo/ddc-nvim-lsp')
    call jetpack#add('Shougo/pum.vim')
    " ddc-filters
    call jetpack#add('Shougo/ddc-around')
    call jetpack#add('Shougo/ddc-matcher_head')
    call jetpack#add('Shougo/ddc-sorter_rank')
    call jetpack#add('Shougo/ddc-converter_remove_overlap')
    call jetpack#add('LumaKernel/ddc-file')

    " Neovim Builtin LSP
    call jetpack#add('neovim/nvim-lspconfig')
    call jetpack#add('williamboman/nvim-lsp-installer')

    " Snippet
    call jetpack#add('hrsh7th/vim-vsnip')
    call jetpack#add('hrsh7th/vim-vsnip-integ')
    call jetpack#add('rafamadriz/friendly-snippets')

call jetpack#end()

" vim-airline Setting
source ~/dotfiles/nvim/plugins/airline.rc.vim
" vim-startify Setting
source ~/dotfiles/nvim/plugins/startify.rc.vim
" nvim-treesitter Setting
source ~/dotfiles/nvim/plugins/treesitter.rc.vim
" lexima.vim Setting
source ~/dotfiles/nvim/plugins/lexima.rc.vim
" ddc.vim Setting
source ~/dotfiles/nvim/plugins/ddc.rc.vim
" LSP Setting
source ~/dotfiles/nvim/plugins/lsp.rc.vim

