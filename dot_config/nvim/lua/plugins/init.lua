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
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = require "configs.snacks",
    keys = {
      -- Snacks.lazygit
      {
        "<LEADER>gg",
        function()
          Snacks.lazygit()
        end,
        desc = "Toggle LazyGit",
      },
      -- Snacks.words
      {
        "]]",
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = "Next Reference",
        mode = { "n", "t" },
      },
      {
        "[[",
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = "Prev Reference",
        mode = { "n", "t" },
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
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
    enabled = false,
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

  {
    "mrcjkb/rustaceanvim",
    ft = { "rust" },
    config = function()
      require "configs.rustaceanvim"
    end,
  },

  {
    "mfussenegger/nvim-dap",
    ft = { "c", "cpp", "rust", "zig" },
    config = function()
      require "configs.dap"
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    ft = { "c", "cpp", "rust", "zig" },
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      require "configs.dap-ui"
    end,
  },
}
