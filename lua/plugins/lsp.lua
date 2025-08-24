return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("hraesvelgr.configs.mason")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		config = function()
			require("hraesvelgr.configs.lsp").defaults()
			require("hraesvelgr.lsp")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			require("hraesvelgr.configs.luasnip")
		end,
	},
}
