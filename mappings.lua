---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- ["<C-a>"] = { "ggvG$" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  i = {
    ["jk"] = { "jk", "nothing" },
  },
}

-- more keybinds!

M.competitest = {
  n = {
    ["<leader>ta"] = { ":CompetiTest add_testcase<CR>", "Add Testcase", },
    ["<leader>te"] = { ":CompetiTest edit_testcase<CR>", "Edit Testcase", },
    ["<leader>td"] = { ":CompetiTest delete_testcase<CR>", "Delete Testcase", },
    ["<leader>tr"] = { ":CompetiTest run<CR>", "Run", },
    ["<leader>tn"] = { ":CompetiTest run_no_compile<CR>", "Run With No Compile", },
  },
}

M.general = {
  n = {
    [";"] = { ":", "Command Mode", },
  },
  i = {
    ["<C-c>"] = { "<ESC>", "Leave Insert", },
  },
}

return M
