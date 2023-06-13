local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'pylsp',
    'zls',
    'lua_ls',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()


lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

--  Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


--  Configure python language server for neovim
require 'lspconfig'.pylsp.setup {
    on_attach = on_attach,
    filetypes = { "python" },
    settings = {
        pylsp = {
            plugins = {
                black = { enabled = true, line_length = 120 },
                isort = { enabled = true, profile = "black", line_length = 120 },
                pylint = { enabled = true },
                flake8 = { enabled = false },
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
            }
        },
        formatCommand = { "black" }
    }
}

lsp.setup()
