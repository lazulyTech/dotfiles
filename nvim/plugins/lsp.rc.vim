lua << EOF

    local lsp_installer = require("nvim-lsp-installer")

    -- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
    -- or if the server is already installed).
    lsp_installer.on_server_ready(function(server)
        local opts = {}
--        if server.name == "arduino_language_server" then
--            opts.on_new_config = function (config, root_dir)
--                local partial_cmd = server:get_default_options().cmd
--                local MY_FQBN = "arduino:avr:nano"
--                config.cmd = vim.list_extend(partial_cmd, { "-fqbn", MY_FQBN })
--            end
--        end
        server:setup(opts)
    end)

EOF

