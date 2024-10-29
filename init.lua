vim.g.mapleader = " "

vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", { install = { colorscheme = { "nvchad" } } })

dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
dofile(vim.g.base46_cache .. "syntax")
dofile(vim.g.base46_cache .. "blankline")
dofile(vim.g.base46_cache .. "cmp")
dofile(vim.g.base46_cache .. "colors")
dofile(vim.g.base46_cache .. "devicons")
dofile(vim.g.base46_cache .. "lsp")
dofile(vim.g.base46_cache .. "mason")
dofile(vim.g.base46_cache .. "nvimtree")
dofile(vim.g.base46_cache .. "telescope")
dofile(vim.g.base46_cache .. "treesitter")

require('hraesvelgr')
