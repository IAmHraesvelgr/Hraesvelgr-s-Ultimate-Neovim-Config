return {
	{
		{
			"hrsh7th/cmp-nvim-lsp",
			event = "InsertEnter",
		},
		{
			"hrsh7th/cmp-nvim-lua",
			event = "InsertEnter",
		},
		{
			"hrsh7th/cmp-buffer",
			event = "InsertEnter",
		},
		{
			"hrsh7th/cmp-path",
			event = "InsertEnter",
		},
		{
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			opts = function()
				return require("hraesvelgr.configs.cmp")
			end,
		},
		{
			"saadparwaiz1/cmp_luasnip",
			event = "InsertEnter",
		},
	},
}
