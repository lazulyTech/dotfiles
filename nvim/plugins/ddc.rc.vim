" ddc settings (global)
" call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global(
    \ 'sources', [
    \   'around',
    \   'file',
    \   'vsnip',
    \ ],
    \ 'completionMenu', 'pum.vim',
    \ )
call ddc#custom#patch_global(
    \ 'sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank'],
    \     'converters': ['converter_remove_overlap'],
    \   },
    \   'around': {'mark': 'Around'},
    \   'file': {
    \     'mark': 'File',
    \     'isVolatile': v:true, 
    \     'forceCompletionPattern': '\S/\S*'
    \   },
    \ })

call ddc#custom#patch_filetype(['c', 'cpp', 'cmake', 'tex', 'python', 'ruby', 'vim'],
    \ 'sources', [
    \   'nvim-lsp',
    \   'file',
    \   'vsnip',
    \ ],
    \ 'completionMenu', 'pum.vim',
    \ )
call ddc#custom#patch_filetype(['c', 'cpp', 'cmake', 'tex', 'python', 'ruby', 'vim'],
    \ 'sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank'],
    \   },
    \   'nvim-lsp': {
    \     'mark': 'Lsp',
    \     'forceCompletionPattern': '\.\w*|:\w*|->\w*'
    \   },
    \   'file': {
    \     'mark': 'File',
    \     'isVolatile': v:true, 
    \     'forceCompletionPattern': '\S/\S*'
    \   },
    \ })

" ddc.vim Keybinds
" <Tab>: completion.
inoremap <silent><expr> <Tab>
    \ ddc#map#pum_visible() ? '<C-n>' :
    \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
    \ '<Tab>' : ddc#map#manual_complete()
" <S-Tab>: completion back.
inoremap <expr><S-Tab>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

call ddc#enable()

" vim-vsnip Keybinds
" Expand
imap <expr> <CR>    vsnip#expandable()  ? '<Plug>(vsnip-expand)' : ddc#map#pum_visible() ? '<C-y>' : '<CR>'
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

