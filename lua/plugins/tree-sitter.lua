return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local treesitter = require('nvim-treesitter.configs')
        treesitter.setup {
            ensure_installed = { "lua", "vim", "vimdoc", "python", "query", "elixir", "go", "goctl", "gomod",
                                "markdown", "markdown_inline", "typescript", "tsx", "html", "css", "dart", "java"},
            sync_install = true,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            }
        }
    end
}
