return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local null_ls = require("null-ls")

		null_ls.setup({
			timeout_ms = 5000,
			sources = {
				null_ls.builtins.formatting.black.with({
					extra_args = {
						"--fast",
					},
				}),
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.clang_format.with({
					extra_args = {
						"-style={BasedOnStyle: Microsoft, PointerAlignment: Left, IndentWidth: 2}",
					},
				}),
				null_ls.builtins.formatting.google_java_format,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								async = true,
								bufnr = bufnr,
								filter = function()
									return client.name == "null-ls"
								end,
							})
						end,
					})
				end
			end,
		})
	end,
}
