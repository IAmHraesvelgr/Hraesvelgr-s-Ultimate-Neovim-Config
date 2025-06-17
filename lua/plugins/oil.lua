return {
	"stevearc/oil.nvim",
	dependencies = {
		{
			"nvim-tree/nvim-web-devicons",
			lazy = true,
			opts = function()
				return { override = require("nvchad.icons.devicons") }
			end,
			config = function(_, opts)
				require("nvim-web-devicons").setup(opts)
			end,
		},
	},
	config = function()
		require("hraesvelgr.configs.oil")
	end,
}
