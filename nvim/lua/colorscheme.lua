vim.cmd "autocmd ColorScheme * highlight Normal ctermbg=none guibg=none"
vim.cmd "autocmd ColorScheme * highlight NonText ctermbg=none guibg=none"
vim.cmd "autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none"
vim.cmd "autocmd ColorScheme * highlight Folded ctermbg=none guibg=none"
vim.cmd "autocmd ColorScheme * highlight EndOfBuffer ctermbg=none guibg=none"
vim.cmd "colorscheme molokai"

-- vim.cmd [[
-- syntax on
-- set t_Co=256
-- let $NVIM_TUI_ENABLE_TRUE_COLOR=1
--
-- " if !has("gui_running")
-- "     augroup ColorSchemeBack
-- "         autocmd!
-- "         autocmd VimEnter,ColorScheme * highlight Normal ctermbg=none
-- "         autocmd VimEnter,ColorScheme * highlight LineNr ctermbg=none
-- "         autocmd VimEnter,ColorScheme * highlight SignColumn ctermbg=none
-- "         autocmd VimEnter,ColorScheme * highlight VertSplit ctermbg=none
-- "         autocmd VimEnter,ColorScheme * highlight NonText ctermbg=none
-- "     augroup END
-- " endif
--
--
-- "    colorscheme molokai
--
-- try
--     colorscheme molokai
-- catch /^Vim\%((\a\+)\)\=:E185/
--     colorscheme default
--     set background=dark
-- endtry
--
-- " highlight Normal ctermbg=none
-- " highlight NonText ctermbg=none
-- " highlight LineNr ctermbg=none
-- " highlight Folded ctermbg=none
-- " highlight EndOfBuffer ctermbg=none
--
-- ]]
