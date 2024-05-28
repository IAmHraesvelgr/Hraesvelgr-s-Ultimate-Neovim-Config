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
        event = "VeryLazy"
    },
    { 
	    "rose-pine/neovim", 
	    name = "rose-pine",
        event = "VeryLazy",
	    config = function()
		    vim.cmd('colorscheme rose-pine')

		    vim.api.nvim_set_hl(0, "Normal", { bg = None })
		    vim.api.nvim_set_hl(0, "NormalFloat", { bg = None })
	    end
    },
    {
	    "nvim-treesitter/nvim-treesitter", 
	    build = ":TSUpdate",
        event = "VeryLazy",
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
	    { 'williamboman/mason.nvim' },
	    { 'williamboman/mason-lspconfig.nvim' },
	    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
	    { 'neovim/nvim-lspconfig' },
	    { 'hrsh7th/cmp-nvim-lsp' },
	    { 'hrsh7th/nvim-cmp' },
	    { 'L3MON4D3/LuaSnip' },
        event = "VeryLazy"
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
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim"
        },
    },
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            require("notify").setup({
                stages = "fade",
                render = "compact",
                background_colour = 'FloatShadow'
            })
            vim.notify = require("notify")
        end
    },
    {
        "folke/zen-mode.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup({
                terminals = {
                    shell = "powershell"
                }
            })
        end,
    },
    {
        "j-hui/fidget.nvim",
        event = "VeryLazy"
    },
    {
        "petertriho/nvim-scrollbar",
        event = "VeryLazy",
        config = function()
            require("scrollbar").setup()
        end
    },
    {
        "folke/trouble.nvim",
        event = "VeryLazy",
    },
})
