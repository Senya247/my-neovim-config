-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local g = vim.g
local wo = vim.wo
local opt = vim.opt

-- No number
wo.number = false

-- Tab width stuff FIXME
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
