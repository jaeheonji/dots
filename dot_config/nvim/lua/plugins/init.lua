return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "saghen/blink.cmp",
    dependencies = {
      "Exafunction/windsurf.nvim",
      "giuxtaposition/blink-cmp-copilot",
    },
    opts = require "configs.blink",
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = require "configs.noice",
  },

  {
    "aserowy/tmux.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    ft = { "markdown", "codecompanion" },
    opts = require "configs.markdown",
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = require "configs.copilot",
  },

  {
    "Exafunction/windsurf.nvim",
    event = "InsertEnter",
    config = function()
      require "configs.windsurf"
    end,
  },

  {
    "olimorris/codecompanion.nvim",
    event = "VeryLazy",
    opts = require "configs.codecompanion",
  },
}
