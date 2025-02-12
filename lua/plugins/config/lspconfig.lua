local lsp = require('cmp_nvim_lsp')
local lspconfig = require("lspconfig")
local capabilities = lsp.default_capabilities()
local on_attach = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end
end


lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.csharp_ls.setup {}
lspconfig.elixirls.setup {
  cmd = { "/home/celc/ThirdPartyProjects/lsp/elixir-ls/language_server.sh" },
}
lspconfig.clangd.setup {}
lspconfig.gopls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
lspconfig.ts_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.sqlls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.jdtls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'Q', vim.lsp.buf.hover, {})
vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>f', function()
  -- vim.lsp.buf.format { async = true }
  -- end, {})

vim.keymap.set("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
vim.keymap.set("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.keymap.set("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)


