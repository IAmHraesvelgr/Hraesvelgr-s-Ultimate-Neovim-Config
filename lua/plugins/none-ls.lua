return {
	{
		"nvimtools/none-ls.nvim",
		event = { "BufNewFile" },
		config = function()
			require("hraesvelgr.configs.none-ls")
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufNewFile" },
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					"black",
					"clang-format",
					"gofumpt",
					"isort",
					"prettier",
					"stylua",
				},
			})
		end,
	},
}
