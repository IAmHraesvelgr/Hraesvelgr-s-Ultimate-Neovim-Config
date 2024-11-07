return {
	{
		"folke/trouble.nvim",
		event = "VeryLazy",
		config = function()
			dofile(vim.g.base46_cache .. "trouble")
		end,
	},
}
