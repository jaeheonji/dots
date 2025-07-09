-- Highlight group for Codeium suggestions, linked to "Comment" for a similar appearance.
-- "CodeiumSuggestion" is not set by default, so explicit configuration is required.
-- vim.api.nvim_set_hl(0, "CodeiumSuggestion", { link = "Comment" })

local options = {
  enable_cmp_source = false,
  -- virtual_text = {
  --   enabled = true,
  -- },
}

require("codeium").setup(options)
