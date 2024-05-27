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

require("lazy").setup({
    {
    	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 
	"rose-pine/neovim", 
	name = "rose-pine", 
	config = function()
		vim.cmd('colorscheme rose-pine')

		vim.api.nvim_set_hl(0, "Normal", { bg = None })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = None })
	end
    },
    {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local configs = require('nvim-treesitter.configs')

		configs.setup({
			ensure_installed = { 'lua' },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
    },
    {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		
		vim.opt.termguicolors = true

		require('nvim-tree').setup()
	end
    }
})
