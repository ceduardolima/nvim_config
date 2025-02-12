return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require("mason").setup()
      local mason_tool_installer = require "mason-tool-installer"
      mason_tool_installer.setup {
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "ruff", -- python linter
          "djlint", -- django linter
          "eslint_d", -- js linter
          "gci",
          "gotests",
        },
      }
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          "csharp_ls",
          "elixirls",
          "arduino_language_server",
          "clangd",
          "ts_ls",
          "sqlls",
          "gopls",
          "ast_grep",
          "jdtls",
          "pyright",
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.config.lspconfig"
    end,
  },
}
