require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Tab
map("n", "<SPACE>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<SPACE>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
map("n", "[t", "<cmd>tabprev<cr>", { desc = "Previous tab" })
map("n", "]t", "<cmd>tabnext<cr>", { desc = "Next tab" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
