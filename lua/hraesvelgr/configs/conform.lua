local conform = require("conform")

conform.setup({
	formatters = {
		black = {
			prepend_args = { "--fast" },
		},
		clang_format = {
			prepend_args = {
				"-style={BasedOnStyle: Microsoft, PointerAlignment: Left, IndentWidth: 2}",
			},
		},
	},
	format_on_save = {
		timeout_ms = 5000,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		python = { "isort", "black" },
		html = { "prettier" },
		css = { "prettier" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		lua = { "stylua" },
		go = { "gofumpt" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		java = { "google-java-format" },
		rust = { "rustfmt" },
	},
})
