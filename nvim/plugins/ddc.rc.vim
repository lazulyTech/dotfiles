" ddc settings (global)
" call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global('ui', 'native')
call ddc#custom#patch_global(
    \ 'sources', [
    \   'around',
    \   'file',
    \   'cmdline-history',
    \ ],
    \ 'completionMenu', 'pum.vim',
    \ )
call ddc#custom#patch_global(
    \ 'sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank'],
    \     'converters': ['converter_remove_overlap'],
    \     'minAutoCompleteLength': 2
    \   },
    \   'around': {'mark': '[A]'},
    \   'file': {
    \     'mark': '[F]',
    \     'isVolatile': v:true, 
    \     'forceCompletionPattern': '\S/\S*'
    \   },
    \   'cmdline-history': {'mark': 'history'},
    \ })

call ddc#custom#patch_filetype(['c', 'cpp', 'cmake', 'python', 'ruby'],
    \ 'sources', [
    \   'nvim-lsp',
    \   'vsnip',
    \ ],
    \ 'completionMenu', 'pum.vim',
    \ )
call ddc#custom#patch_filetype(['c', 'cpp', 'cmake', 'python', 'ruby'],
    \ 'sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_fuzzy'],
    \     'sorters': ['sorter_fuzzy'],
    \     'converters': ['converter_fuzzy'],
    \     'minAutoCompleteLength': 2
    \   },
    \   'nvim-lsp': {
    \     'mark': '[L]',
    \     'forceCompletionPattern': '\.\w*|:\w*|->\w*'
    \   },
    \   'vsnip': {
    \     'mark': '[S]',
    \   }
    \ })

call ddc#custom#patch_filetype(['tex', 'vim', 'html'],
    \ 'sources', [
    \   'nvim-lsp',
    \   'file',
    \   'vsnip',
    \ ],
    \ 'completionMenu', 'pum.vim',
    \ )
call ddc#custom#patch_filetype(['tex', 'vim', 'html'],
    \ 'sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_fuzzy'],
    \     'sorters': ['sorter_fuzzy'],
    \     'converters': ['converter_fuzzy']
    \   },
    \   'nvim-lsp': {
    \     'mark': '[L]',
    \     'forceCompletionPattern': '\.\w*|:\w*|->\w*'
    \   },
    \   'file': {
    \     'mark': '[F]',
    \     'isVolatile': v:true, 
    \     'forceCompletionPattern': '\S/\S*'
    \   },
    \   'vsnip': {
    \     'mark': '[S]',
    \   }
    \ })

" ddc.vim Keybinds
" <Tab>: completion.
inoremap <silent><expr> <Tab>
    \ pumvisible() ? '<C-n>' :
    \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
    \ '<Tab>' : ddc#map#manual_complete()
" <S-Tab>: completion back.
inoremap <expr><S-Tab>  pumvisible() ? '<C-p>' : '<C-h>'

call ddc#enable()

" vim-vsnip Keybinds
" Expand
imap <expr> <CR>    vsnip#expandable()  ? '<Plug>(vsnip-expand)' : pumvisible() ? '<C-y>' : '<CR>'
smap <expr> <CR>    vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<CR>'
" Jump forward or backward
imap <expr> <C-f>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-f>'
smap <expr> <C-f>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-f>'
imap <expr> <C-b>   vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-b>'
smap <expr> <C-b>   vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-b>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)
let g:vsnip_filetypes = {}
autocmd User PumCompleteDone call vsnip_integ#on_complete_done(g:pum#completed_item)

