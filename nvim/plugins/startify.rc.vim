let g:startify_files_number = 5
let g:startify_list_order = [
    \ ['Commands'],
    \ 'commands',
    \ ['♻  File from Current Dir:'],
    \ 'dir',
    \ ['⚑  Session:'],
    \ 'sessions',
    \ ['  BookMarks:'],
    \ 'bookmarks',
    \ ]

let g:startify_commands = [
    \ 'call ddu#start({})',
    \ 'JetpackSync',
    \ 'source $MYVIMRC',
    \ 'checkhealth',
    \ ]

let g:startify_bookmarks = [
    \ '~/dotfiles/',
    \ '~/dotfiles/nvim/init.vim',
    \ '~/dotfiles/nvim/plugins/lsp.rc.vim',
    \ '~/dotfiles/nvim/plugins/startify.rc.vim',
    \ '~/.zshrc',
    \ ]
