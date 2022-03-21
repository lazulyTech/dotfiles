" inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

set completeopt-=preview
set completeopt=menuone,noinsert,noselect
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

"search
set hlsearch
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

set shell=/opt/homebrew/bin/zsh
tnoremap <Esc><Esc> <C-\><C-n>

