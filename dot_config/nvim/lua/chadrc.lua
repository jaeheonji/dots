-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "catppuccin",

  nvdash = {
    load_on_startup = true,
  },

  tabufline = {
    enabled = true,
    lazyload = false,
  },

  cmp = {
    style = "atom_colored",
  },

  statusline = {
    theme = "default",
    separator_style = "block",
  },
}

return M
