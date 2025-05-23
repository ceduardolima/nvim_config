return {{"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"}, {
    "hrsh7th/vim-vsnip",
    dependecies = {"rafamadriz/friendly-snippets"}
}, {"hrsh7th/vim-vsnip-integ"}, {
    "hrsh7th/nvim-cmp",
    config = function()

        local cmp = require "cmp"
        cmp.setup {
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()
            },
            mapping = cmp.mapping.preset.insert {
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<CR>"] = cmp.mapping.confirm {
                    select = true
                } -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            },
            sources = cmp.config.sources({{
                name = "nvim_lsp"
            }, {
                name = "vsnip"
            }}, {{
                name = "buffer"
            }})
        }
    end
}, {"hrsh7th/cmp-nvim-lsp"}}
