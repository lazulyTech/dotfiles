call ddu#custom#patch_global({
    \   'ui': 'filer',
    \   'sources': [{'name': 'file', 'params': {}}],
    \   'sourceOptions': {
    \     '_': {
    \       'columns': ['filename'],
    \     },
    \   },
    \   'kindOptions': {
    \     'file': {
    \       'defaultAction': 'open',
    \     },
    \   }
    \ })
" " default ui
" call ddu#custom#patch_global({
"     \ 'ui': 'ff',
"     \ })

" " ui param
" call ddu#custom#patch_global({
"     \   'uiParams': {
"     \     'ff': {
"     \       'split': 'floating',
"     \     }
"     \   },
"     \ })

" " default action
" call ddu#custom#patch_global({
"     \    'kindOptions': {
"     \        'file': {
"     \            'defaultAction': 'open',
"     \        },
"     \    },
"     \ })

" " sources
" call ddu#custom#patch_global({
"     \   'sources': [{'name': 'file_rec', 'params': {}}],
"     \   'sourceOptions': {
"     \     '_': {
"     \       'matchers': ['matcher_substring'],
"     \     },
"     \   },
"     \ })

" " Keymappings
autocmd FileType ddu-filer call s:ddu_my_settings()
function! s:ddu_my_settings() abort
  nnoremap <buffer><silent> <CR>
        \ <Cmd>call ddu#ui#filer#do_action('itemAction')<CR>
  nnoremap <buffer><silent> <Space>
        \ <Cmd>call ddu#ui#filer#do_action('toggleSelectItem')<CR>
  nnoremap <buffer> o
        \ <Cmd>call ddu#ui#filer#do_action('expandItem',
        \ {'mode': 'toggle'})<CR>
  nnoremap <buffer><silent> q
        \ <Cmd>call ddu#ui#filer#do_action('quit')<CR>
endfunction
" autocmd FileType ddu-ff call s:ddu_my_settings()
" function! s:ddu_my_settings() abort
"     nnoremap <buffer><silent> <CR>
"         \ <Cmd>call ddu#ui#ff#do_action('itemAction')<CR>
"     nnoremap <buffer><silent> <Space>
"         \ <Cmd>call ddu#ui#ff#do_action('toggleSelectItem')<CR>
"     nnoremap <buffer><silent> i
"         \ <Cmd>call ddu#ui#ff#do_action('openFilterWindow')<CR>
"     nnoremap <buffer><silent> q
"         \ <Cmd>call ddu#ui#ff#do_action('quit')<CR>
" endfunction

" autocmd FileType ddu-ff-filter call s:ddu_filter_my_settings()
" function! s:ddu_filter_my_settings() abort
"     inoremap <buffer><silent> <CR>
"     \ <Esc><Cmd>close<CR>
"     nnoremap <buffer><silent> <CR>
"     \ <Cmd>close<CR>
"     nnoremap <buffer><silent> q
"     \ <Cmd>close<CR>
" endfunction

