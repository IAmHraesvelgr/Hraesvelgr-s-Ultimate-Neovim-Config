return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("hraesvelgr.configs.mason")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = "User FilePost",
		config = function()
			require("hraesvelgr.configs.lsp").defaults()
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
