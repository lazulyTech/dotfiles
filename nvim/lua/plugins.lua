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
    {"vim-jp/vimdoc-ja",
        lazy = true,
        keys = {
            {"h", mode = "c",},
        }
    },
    "tomasr/molokai",
    {"nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons"},
    },
    {"nvim-tree/nvim-tree.lua",
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
        build = "make",
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
        main = "ibl",
        config = function ()
            require("ibl_rc")
        end
    },
    {"windwp/nvim-autopairs",
        enabled = true,
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {"cohama/lexima.vim",
        enabled = false,
    },
    {"ixru/nvim-markdown"
        
    },
    {'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
        -- config = function()
            -- require("Comment").setup()
        -- end
    },
    {"pocco81/auto-save.nvim",
        opts = {
            trigger_events = {
                "InsertLeave",
                "BufLeave",
                "FocusLost",
            },
        },
    },
    {"skanehira/denops-translate.vim",
        dependencies = {"vim-denops/denops.vim"},
        config = function()
            vim.g.translate_target = "ja"
            vim.g.translate_source = "en"
        end,
    },
})

require("lualine_rc")
require("lspconfig_rc")
-- require("ibl").setup{
    -- scope = {highlight = highlight}
-- }
