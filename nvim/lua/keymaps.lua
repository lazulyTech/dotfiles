vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local map = vim.api.nvim_set_keymap

-- keymap setting in lua https://uhoho.hatenablog.jp/entry/2023/05/19/124317
-- nnoremap j gj    -> vim.keymap.set("n", "j", "gj")
-- nmap j gj        -> vim.keymap.set("n", "j", "gj", {remap = true})

map("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)

map("n", "<C-b>", ":bprev<Return>", opts)
map("n", "<C-f>", ":bnext<Return>", opts)
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')

-- vim-vsnip keymap
vim.api.nvim_create_autocmd('InsertEnter', {
    callback = function(ev)
        vim.keymap.set({'i', 's'}, '<C-j>', function() return vim.fn['vsnip#expandable']() == 1 and '<Plug>(vsnip-expand)' or '<C-j>' end, { expr = true, noremap = false })
        vim.keymap.set({'i', 's'}, '<C-l>', function() return vim.fn['vsnip#available'](1) == 1 and '<Plug>(vsnip-expand-or-jump)' or '<C-l>' end, { expr = true, noremap = false })
        vim.keymap.set({'i', 's'}, '<Tab>', function() return vim.fn['vsnip#jumpable'](1) == 1 and '<Plug>(vsnip-jump-next)' or '<Tab>' end, { expr = true, noremap = false })
        vim.keymap.set({'i', 's'}, '<S-Tab>', function() return vim.fn['vsnip#jumpable'](-1) == 1 and '<Plug>(vsnip-jump-prev)' or '<S-Tab>' end, { expr = true, noremap = false })
        vim.keymap.set({'n', 's'}, '<s>', [[<Plug>(vsnip-select-text)]], { expr = true, noremap = false })
        vim.keymap.set({'n', 's'}, '<S>', [[<Plug>(vsnip-cut-text)]], { expr = true, noremap = false })
    end,
})

