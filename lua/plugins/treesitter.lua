return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	},
	opts = function()
		return require("hraesvelgr.configs.treesitter")
	end,
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
