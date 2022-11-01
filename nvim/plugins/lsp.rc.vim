lua << EOF

--    local lsp_installer = require("nvim-lsp-installer")
--
    -- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
    -- or if the server is already installed).
--    lsp_installer.on_server_ready(function(server)
--        local opts = {}
--        if server.name == "arduino_language_server" then
--            opts.on_new_config = function (config, root_dir)
--                local partial_cmd = server:get_default_options().cmd
--                local MY_FQBN = "arduino:avr:nano"
--                config.cmd = vim.list_extend(partial_cmd, { "-fqbn", MY_FQBN })
--            end
--        end
--        server:setup(opts)
--    end)

--     require("mason").setup()
--     require("mason-lspconfig").setup()
--     require("mason-lspconfig").setup_handlers{
--         function(server_name) -- default handler (optional)
--             local opts = {}
--             -- require("lspconfig")[server_name].setup{
--             --     on_attach = onattach,
--             -- }
--         end
--     }
    local mason = require('mason')
    local nvim_lsp = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')

    mason.setup()
    mason_lspconfig.setup_handlers({
        function(server_name)
            local opts = {}
            nvim_lsp[server_name].setup(opts)
        end
    })

EOF

