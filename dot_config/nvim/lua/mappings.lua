require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Normal mode: quick command mode and escape
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Tab management
map("n", "<LEADER>tn", "<CMD>tabnew<CR>", { desc = "New tab" })
map("n", "<LEADER>tc", "<CMD>tabclose<CR>", { desc = "Close tab" })
map("n", "[t", "<CMD>tabprev<CR>", { desc = "Previous tab" })
map("n", "]t", "<CMD>tabnext<CR>", { desc = "Next tab" })

-- map({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>")
