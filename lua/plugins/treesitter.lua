return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				auto_install = true,
				sync_install = true,
				highlight = {
					enable = true,
					use_languagetree = true,
				},
				indent = { enable = true },
			})
		end,
	},
}
