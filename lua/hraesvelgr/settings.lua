vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.numberwidth = 2
vim.o.ruler = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 250

vim.o.shell = "pwsh"

vim.opt.termguicolors = true

vim.opt.fillchars = { eob = " " }

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.o.cmdheight = 0

vim.o.laststatus = 3
