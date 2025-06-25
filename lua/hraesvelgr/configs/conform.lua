local conform = require("conform")

conform.setup({
	formatters = {
		black = {
			args = { "--fast" },
		},
		clang_format = {
			args = {
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
		c = { "clang-format" },
		cpp = { "clang-format" },
		java = { "google-java-format" },
	},
})
