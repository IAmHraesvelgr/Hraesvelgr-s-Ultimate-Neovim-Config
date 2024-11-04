local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		html = { "prettier " },
		css = { "prettier " },
		javascript = { "prettier " },
		c = { "clang-format" },
		cpp = { "clang-format " },
		python = { "black" },
		go = { "gofumpt" },
	},
	format_on_save = {
		timeout_ms = 5000,
		lsp_fallback = true,
	},
}

return options
