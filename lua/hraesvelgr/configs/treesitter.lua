local opts = {
	ensure_installed = {
		"c",
		"cpp",
		"c_sharp",
		"python",
		"html",
		"css",
		"javascript",
		"typescript",
		"cmake",
		"lua",
		"luadoc",
		"printf",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
	},

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },
}

require("nvim-treesitter.configs").setup(opts)
