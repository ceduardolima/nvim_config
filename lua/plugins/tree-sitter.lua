return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local treesitter = require('nvim-treesitter.configs')
    treesitter.setup {
      ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "query", "elixir", "go", "goctl", "gomod", "markdown", "markdown_inline", "typescript", "dart"},
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,
      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = false,

      ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
      -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end
}
