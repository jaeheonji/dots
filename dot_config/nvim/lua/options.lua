require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

o.foldmethod = "expr" -- set fold method to expression
o.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter for folding
o.foldlevel = 99
