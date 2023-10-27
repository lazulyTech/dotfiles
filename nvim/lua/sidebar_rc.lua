require("sidebar-nvim").setup{
    open = true,
    initial_width = 25,
    --sections: buffers, containers, datetime, diagnostics, files
    --          git-status, git, symbols, todos
    -- https://github.com/sidebar-nvim/sidebar.nvim/blob/main/doc/general.md#builtin-sections
    sections = {"buffers", "files", "todos", "git"},
    files = {
        show_hidden = true,
        ignore_path = {
            "%.git$",
        },
    }
}
