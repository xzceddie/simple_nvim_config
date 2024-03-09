-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

require('lspconfig')['pyright'].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

-- require('lspconfig')['sumneko_lua'].setup {
--     on_attach = on_attach,
--     flags = lsp_flags,
--     capabilities = capabilities
-- }
require('lspconfig')['lua_ls'].setup { -- this is to fix the deprecated warning of sumneko_lua
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

