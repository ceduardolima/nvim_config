return {
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  {
    "hrsh7th/vim-vsnip",
    dependecies = {
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/vim-vsnip-integ",
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require "plugins.config.completions-config"
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
}
