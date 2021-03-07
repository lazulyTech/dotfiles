inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

set completeopt=menuone,noinsert
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

imap [ []<left>
imap ( ()<left>
imap { {}<left>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" vim-airline
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" deol.vim
nnoremap <silent><C-o> :<C-u>Deol -split=floating<CR>
tnoremap <ESC>   <C-\><C-n>

" neosnippet.vim settings
"     see ~/.vim/rc/plugins/snippet.rc.vim

" coc.nvim settings
"     see ~/.vim/rc/plugins/coc.rc.vim

