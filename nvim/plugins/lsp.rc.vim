lua << EOF

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

