return {
  {
    "stevearc/conform.nvim",

    -- event = 'BufWritePre', -- uncomment for format on save
    config = function(_, opts)
      require "configs.conform"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "plugins.configs.treesitter",
    config = function(_, opts)
      require("nvim-treesitter.install").compilers = { "clang" }
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "plugins.configs.nvimtree",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
}
