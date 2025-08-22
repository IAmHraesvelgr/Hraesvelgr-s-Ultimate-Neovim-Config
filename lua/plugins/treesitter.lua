return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	event = { "BufReadPost", "BufNewFile" },
	lazy = false,
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	},
	config = function()
		require("hraesvelgr.configs.treesitter")
	end,
}
