local opts = {
	ensure_installed = { "lua", "luadoc", "printf", "vim", "vimdoc" },

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },
}

require("nvim-treesitter.configs").setup(opts)
