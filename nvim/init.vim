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

    " Explore
    call jetpack#add('Shougo/ddu.vim')
    call jetpack#add('Shougo/ddu-source-file')
    call jetpack#add('Shougo/ddu-kind-file')
    call jetpack#add('Shougo/ddu-column-filename')
    call jetpack#add('Shougo/ddu-ui-filer')
    " call jetpack#add('lambdalisue/fern.vim')
    " call jetpack#add('antoinemadec/FixCursorHold.nvim')
    " call jetpack#add('lambdalisue/fern-git-status.vim')
    " call jetpack#add('lambdalisue/fern-mapping-git.vim')
    " Syntax
"    call jetpack#add('nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'})
    call jetpack#add('sheerun/vim-polyglot')
    call jetpack#add('tpope/vim-commentary')

    " Translating Documents
    call jetpack#add('skanehira/translate.vim')

    " Help Git Control
    call jetpack#add('airblade/vim-gitgutter')
    call jetpack#add('tpope/vim-fugitive')

    " Parentheses Completion
    call jetpack#add('cohama/lexima.vim')

"    " ddu.vim
"    call jetpack#add('Shougo/ddu.vim')
"        call jetpack#add('Shougo/ddu-ui-ff')
"        call jetpack#add('Shougo/ddu-kind-file')
"        call jetpack#add('Shougo/ddu-source-file_rec')
"        call jetpack#add('Shougo/ddu-filter-matcher_substring')

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
        call jetpack#add('tani/ddc-fuzzy')

    " Neovim Builtin LSP
    call jetpack#add('neovim/nvim-lspconfig')
    call jetpack#add('williamboman/nvim-lsp-installer')

    " Snippet
    call jetpack#add('hrsh7th/vim-vsnip')
    call jetpack#add('hrsh7th/vim-vsnip-integ')
    call jetpack#add('rafamadriz/friendly-snippets')

    call jetpack#add('twitvim/twitvim')

call jetpack#end()

" vim-airline Setting
source ~/dotfiles/nvim/plugins/airline.rc.vim
" vim-startify Setting
source ~/dotfiles/nvim/plugins/startify.rc.vim
" nvim-treesitter Setting
" source ~/dotfiles/nvim/plugins/treesitter.rc.vim
" translate.vim Setting
source ~/dotfiles/nvim/plugins/translate.rc.vim
" lexima.vim Setting
source ~/dotfiles/nvim/plugins/lexima.rc.vim
"" ddu.vim Setting
source ~/dotfiles/nvim/plugins/ddu.rc.vim
" ddc.vim Setting
source ~/dotfiles/nvim/plugins/ddc.rc.vim
" LSP Setting
source ~/dotfiles/nvim/plugins/lsp.rc.vim
" twitvim Setting
source ~/dotfiles/nvim/plugins/twitvim.rc.vim

