let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0. ',
    \ '1': '1. ',
    \ '2': '2. ',
    \ '3': '3. ',
    \ '4': '4. ',
    \ '5': '5. ',
    \ '6': '6. ',
    \ '7': '7. ',
    \ '8': '8. ',
    \ '9': '9. '
\}
let g:airline#extensions#whitespace#mixed_indent_algo = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = "\uE0B0"
let g:airline_left_alt_sep = "\uE0B1"
let g:airline_right_sep = "\uE0B2"
let g:airline_right_alt_sep = "\uE0B3"
let g:airline_symbols.crypt = "\uE0A2"		"暗号化されたファイル
let g:airline_symbols.linenr = "\uE0A1"			"行
let g:airline_symbols.maxlinenr = "\uE0A3"		"最大行
let g:airline_symbols.branch = "\uF113 \uE0A0"		"gitブランチ
"let g:airline_symbols.paste = 'ρ'			"ペーストモード
"let g:airline_symbols.spell = 'Ꞩ'			"スペルチェック
"let g:airline_symbols.notexists = '∄'		"gitで管理されていない場合
"let g:airline_symbols.whitespace = 'Ξ'	"空白の警告(余分な空白など)
