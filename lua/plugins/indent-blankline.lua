return {
	"lukas-reineke/indent-blankline.nvim",
	event = "VeryLazy",
	main = "ibl",
	config = function()
		require("hraesvelgr.configs.indent-blankline")
	end,
}
