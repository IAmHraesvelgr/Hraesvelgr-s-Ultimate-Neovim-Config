return {
	{
		"nvimtools/none-ls.nvim",
		event = "VeryLazy",
		opts = function()
			require("hraesvelgr.configs.none-ls")
		end,
	},
}
