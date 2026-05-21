require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>ta", ":CompetiTest add_testcase<CR>", { desc = "Add Testcase" })
map("n", "<leader>te", ":CompetiTest edit_testcase<CR>", { desc = "Edit Testcase" })
map("n", "<leader>td", ":CompetiTest delete_testcase<CR>", { desc = "Delete Testcase" })
map("n", "<leader>tr", ":CompetiTest run<CR>", { desc = "Run" })
map("n", "<leader>tn", ":CompetiTest run_no_compile<CR>", { desc = "Run With No Compile" })

map("i", "<C-c>", "<ESC>")

map("n", "<leader>tp", ":TypstPreview<CR>", { desc = "Start Typst Preview" })
