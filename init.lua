-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt

opt.relativenumber = true
opt.cursorline = true
opt.scrolloff = 5
opt.autochdir = true
opt.autoread = true

opt.guifont = "FantasqueSansM Nerd Font:h13"

if vim.fn.has('wsl') then
  vim.cmd [[
  set clipboard+=unnamedplus
  let g:clipboard = {
  \   'name': 'win32yank-wsl',
  \   'copy': {
  \      '+': 'win32yank.exe -i --crlf',
  \      '*': 'win32yank.exe -i --crlf',
  \    },
  \   'paste': {
  \      '+': 'win32yank.exe -o --lf',
  \      '*': 'win32yank.exe -o --lf',
  \   },
  \   'cache_enabled': 0,
  \ }  ]]
end

-- require("competitest").setup()
