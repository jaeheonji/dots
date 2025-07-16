local options = {
  sources = {
    default = { "lsp", "snippets", "buffer", "path", "copilot" },
    providers = {
      -- codeium = {
      --   name = "Codeium",
      --   module = "codeium.blink",
      --   async = true,
      -- },
      copilot = {
        name = "Copilot",
        module = "blink-cmp-copilot",
        async = true,
      },
    },
  },
}

return options
