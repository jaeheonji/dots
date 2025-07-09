local options = {
  sources = {
    default = { "lsp", "snippets", "buffer", "path", "codeium", "copilot" },
    providers = {
      codeium = {
        enabled = function()
          return not vim.tbl_contains({ "AvanteInput" }, vim.bo.filetype)
        end,
        name = "Codeium",
        module = "codeium.blink",
        async = true,
      },
      copilot = {
        name = "Copilot",
        module = "blink-cmp-copilot",
        async = true,
      },
    },
  },
}

return options
