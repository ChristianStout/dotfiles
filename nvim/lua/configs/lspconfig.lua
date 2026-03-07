require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ols", "lua-language-server", "eslint-lsp", "gopls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
