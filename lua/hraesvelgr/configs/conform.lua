local options = {
	formatters_by_ft = {
		lua = { "stylua" },
	},
	format_on_save = {
		timeout_ms = 250,
		lsp_fallback = true,
	},
}

return options
