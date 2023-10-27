vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        width = 25,
        signcolumn = no,
    },
    renderer = {
        group_empty = true,
        highlight_git = true,
        highlight_opened_files = "all",
    },
    filters = {
        dotfiles = true,
    },
})

require("nvim-tree.api").tree.toggle(false, true)
