return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.formatters.black = {
			args = { "--fast" },
		}
		conform.formatters.clang_format = {
			args = {
				"-style={BasedOnStyle: Microsoft, PointerAlignment: Left, IndentWidth: 2}",
			},
		}

		conform.setup({
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
	end,
}
