local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fB', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>fb', ":Telescope file_browser<CR>", {})
vim.keymap.set('n', '<leader>fb', ":Telescope file_browser<CR>", {})

require('telescope').setup{
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        -- mappings = {
        --     i = {
        --         -- map actions.which_key to <C-h> (default: <C-/>)
        --         -- actions.which_key shows the mappings for your picker,
        --         -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        --         ["<C-h>"] = "which_key"
        --     }
        -- }
        file_ignore_patterns = {
            "^.git/",
            "^.cache/",
            "^Library/",
            "Parallels",
            "^Movies",
            "^Music",
        },
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "-uu",
        },
    },
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --     picker_config_key = value,
        --     ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --     extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
        file_browser = {
            theme = "ivy",
            hijack_netrw = {
                ["i"] = {
                    -- insert mode mappings
                },
                ["n"] = {
                    -- normal mode mappings
                },
            },
        },
    }
}

require("telescope").load_extension("fzf")
require("telescope").load_extension("file_browser")

