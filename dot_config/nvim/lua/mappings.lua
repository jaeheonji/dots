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

-- CodeCompanion
map({ "n", "v" }, "<LEADER>ca", "<CMD>CodeCompanionActions<CR>", { desc = "Code companion actions", silent = true })
map({ "n", "v" }, "<LEADER>cc", "<CMD>CodeCompanionChat Toggle<CR>", { desc = "Code companion chat", silent = true })
map("v", "ga", "<CMD>CodeCompaionChat Add<CR>", { desc = "Code companion chat add", silent = true })

-- DAP
map("n", "<LEADER>db", "<CMD>DapToggleBreakpoint<CR>", { desc = "DAP toggle breakpoint" })
map("n", "<LEADER>dc", "<CMD>DapContinue<CR>", { desc = "DAP continue" })
map("n", "<LEADER>di", "<CMD>DapStepInto<CR>", { desc = "DAP step into" })
map("n", "<LEADER>do", "<CMD>DapStepOver<CR>", { desc = "DAP step over" })
map("n", "<LEADER>dk", "<CMD>DapStepOut<CR>", { desc = "DAP step out" })
map("n", "<LEADER>dt", "<CMD>DapTerminate<CR>", { desc = "DAP terminate" })

-- map({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>")
