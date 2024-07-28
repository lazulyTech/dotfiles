local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"vim-denops/denops.vim",
        lazy = false,
    },
    {"vim-jp/vimdoc-ja",
        lazy = true,
        keys = {
            {"h", mode = "c",},
        }
    },
    -- colorscheme
    "tomasr/molokai",
    "nvim-tree/nvim-web-devicons",
    {"nvim-lualine/lualine.nvim",
        -- enabled = false,
        -- dependencies = { "nvim-tree/nvim-web-devicons"},
        config = function ()
            require("lualine_rc")
        end
    },
    -- styles
    {"echasnovski/mini.nvim",
        version = "0.11.0",
        config = function ()
            require("mini_rc")
        end
    },
    {"nvim-tree/nvim-tree.lua",
        enabled = false,
        config = function ()
            require("nvim-tree_rc")
        end
    },
    {"sidebar-nvim/sidebar.nvim",
        enabled = false,
        config = function ()
            require("sidebar_rc")
        end
    },
    {"akinsho/bufferline.nvim",
        enabled = false,
        version = "v4.*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup()
        end
    },
    {"folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            messages = {
                view = "mini",
            },
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            {"rcarriga/nvim-notify",
                opts = {background_colour = "#000000"}
            },
        },
        -- config = function()
            -- require("after.noice_rc")
        -- end
    },
    {"lewis6991/gitsigns.nvim",
        config = function ()
            require("gitsigns").setup()
        end
    },
    -- Syntax Highlight
    {"nvim-treesitter/nvim-treesitter",
        event = {"BufNewFile", "Bufread"},
        build = ":TSUpdate",
        config = function()
            require("after.treesitter_rc")
        end
    },

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {"hrsh7th/nvim-cmp", --補完エンジン本体
        event = {
            "InsertEnter",
            "CmdlineEnter",
        },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", --LSPを補完ソースに
            "hrsh7th/cmp-buffer", --bufferを補完ソースに
            "hrsh7th/cmp-path",  --pathを補完ソースに
            "hrsh7th/vim-vsnip", --スニペットエンジン
            "rafamadriz/friendly-snippets",
            "hrsh7th/cmp-vsnip", --スニペットを補完ソースに
            "hrsh7th/cmp-cmdline", --
            "onsails/lspkind.nvim", --補完欄にアイコンを表示
            "rinx/cmp-skkeleton"
        },
        config = function()
            require("after.cmp_rc")
        end
    },

    {"nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function ()
            require("after.telescope_rc")
        end
    },
    {"nvim-telescope/telescope-fzf-native.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
        build = "make",
    },
    {"nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
    },
    {"sudormrfbin/cheatsheet.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim"
        },
    },

    {"nvimdev/lspsaga.nvim",
        event = "LspAttach",
        config = function ()
            require("lspsaga_rc")
        end
    },
    {"j-hui/fidget.nvim",
        tag = "legacy",
        -- event = "LspAttach",
        opts = {},
        -- config = function ()
        --     require("fidget").setup()
        -- end
    },
    {"lukas-reineke/indent-blankline.nvim",
        enabled = false,
        main = "ibl",
        config = function ()
            require("ibl_rc")
        end
    },
    {"windwp/nvim-autopairs",
        enabled = false,
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {"cohama/lexima.vim",
        enabled = false,
    },
    {"ixru/nvim-markdown",
    },
    {'MeanderingProgrammer/markdown.nvim',
        name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('render-markdown').setup({})
        end,
    },
    {'numToStr/Comment.nvim',
        enabled = false,
        opts = {
            -- add any options here
        },
        lazy = false,
        -- config = function()
            -- require("Comment").setup()
        -- end
    },
    {"HakonHarnes/img-clip.nvim",
        event = "BufEnter",
        opts = {
            -- add options here
            -- or leave it empty to use the default settings
            tex = {
                template = [[
\begin{figure}[h]
    \centering
    \includegraphics[width=0.95\textwidth]{$FILE_PATH}
    \caption{$CURSOR}
    \label{fig:$LABEL}
\end{figure}
                ]],
            },
        },
        keys = {
            -- suggested keymap
            { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste clipboard image" },
        },
    },
    {"pocco81/auto-save.nvim",
        opts = {
            silent = true,
            trigger_events = {
                "InsertLeave",
                "BufLeave",
                "FocusLost",
            },
        },
    },
    {"keaising/im-select.nvim",
        config = function ()
            if vim.fn.has("mac") == 1 then
                require("im_select").setup {
                    default_im_select = "com.apple.keylayout.ABC",
                    set_previous_events = {},
                }
            end
        end
    },

    {"skanehira/denops-translate.vim",
        config = function()
            vim.g.translate_target = "ja"
            vim.g.translate_source = "en"
        end,
    },

    -- {"glebzlat/Arduino.nvim",
    --     config = function ()
    --         require("arduino-nvim").setup {
    --             clangd = require 'mason-core.path'.bin_prefix 'clangd',
    --             -- other settings
    --         }
    --         -- vim.api.nvim_create_autocmd('User', {
    --         --     pattern = 'ArduinoFqbnReset',
    --         --     callback = function()
    --         --         vim.cmd('LspRestart')
    --         --     end
    --         -- })
    --     end
    -- },

    -- skkeleton setting from kat0h/dotfiles
    {'vim-skk/skkeleton',
        lazy = false,
        dependencies = {
          'vim-denops/denops.vim',
        },
        config = function()
            vim.cmd [[
            " skkeleten
            " ==============================================================================
            " if !filereadable(expand('~/.config/skk/SKK-JISYO.L'))
                " call mkdir(expand('~/.config/skk'), 'p')
                " call system('cd ~/.config/skk && wget http://openlab.jp/skk/dic/SKK-JISYO.L.gz && gzip -d SKK-JISYO.L.gz')
            " endif
            " imap <C-j> <Plug>(skkeleton-toggle)
            cmap <C-j> <Plug>(skkeleton-toggle)
            call skkeleton#config({
                \ "globalDictionaries": [expand("~/.skk/SKK-JISYO.L")],
                \ "eggLikeNewline": v:true,
                \})

            call skkeleton#register_kanatable('rom', {
                \   ',': ['，', ''],
                \   '.': ['．', ''],
                \ })
            ]]
        end
    },
    {'delphinus/skkeleton_indicator.nvim',
        dependencies = { 'vim-skk/skkeleton' },
        event = "InsertEnter",
        config = function()
            require('skkeleton_indicator').setup {}
        end
    },
})

require("lspconfig_rc")
-- require("ibl").setup{
    -- scope = {highlight = highlight}
-- }

