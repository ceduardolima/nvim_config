return {
    "neovim/nvim-lspconfig",
    config = function()
        local lsp = require('cmp_nvim_lsp')
        local lspconfig = require("lspconfig")
        local capabilities = lsp.default_capabilities()
        local on_attach = function(_, bufnr)
            local function opts(desc)
                return {
                    buffer = bufnr,
                    desc = "LSP " .. desc
                }
            end
        end

        -- Lista de servidores que usam as mesmas configurações
        local servers = {"clang", "lua_ls", "gopls", "ts_ls", "sqlls", "jdtls", "pyright"}

        for _, server in ipairs(servers) do
            lspconfig[server].setup {
                capabilities = capabilities,
                on_attach = on_attach
            }
        end

        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', 'rn', vim.lsp.buf.rename, {})
        vim.keymap.set('n', 'Q', vim.lsp.buf.hover, {})
        vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
        vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
        -- vim.keymap.set('n', '<leader>f', function()
        -- vim.lsp.buf.format { async = true }
        -- end, {})

        vim.keymap.set("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
        vim.keymap.set("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
        vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        vim.keymap.set("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
    end
}
