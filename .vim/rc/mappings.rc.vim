"inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

"set completeopt=menuone,noinsert
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

"search
set hlsearch
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

"sprit window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" vim-airline
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" deol.vim
nnoremap <silent><C-o> :<C-u>Deol -split=floating<CR>
tnoremap <ESC>   <C-\><C-n>

"vimtex 
let maplocalleader=' '

" neosnippet.vim settings
"     see ~/.vim/rc/plugins/snippet.rc.vim

" coc.nvim settings
"     see ~/.vim/rc/plugins/coc.rc.vim

