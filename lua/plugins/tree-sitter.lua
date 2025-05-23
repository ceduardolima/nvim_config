return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local treesitter = require('nvim-treesitter.configs')
        treesitter.setup {
            ensure_installed = {"c", "lua", "vim", "vimdoc", "python", "query", "elixir", "go", "goctl", "gomod",
                                "markdown", "markdown_inline", "typescript", "dart", "java"},
            sync_install = true,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            }
        }
    end
}
