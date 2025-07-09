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
    "aserowy/tmux.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    ft = { "markdown", "Avante" },
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
    "yetone/avante.nvim",
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    -- ⚠️ must add this setting! ! !
    build = "make",
    event = "VeryLazy",
    version = false, -- Never set this value to "*"! Never!
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "MeanderingProgrammer/render-markdown.nvim",
    },
    keys = {
      {
        "<leader>a+",
        function()
          local tree_ext = require "avante.extensions.nvim_tree"
          tree_ext.add_file()
        end,
        desc = "Select file in NvimTree",
        ft = "NvimTree",
      },
      {
        "<leader>a-",
        function()
          local tree_ext = require "avante.extensions.nvim_tree"
          tree_ext.remove_file()
        end,
        desc = "Remove file in NvimTree",
        ft = "NvimTree",
      },
    },
    opts = require "configs.avante",
  },
}
