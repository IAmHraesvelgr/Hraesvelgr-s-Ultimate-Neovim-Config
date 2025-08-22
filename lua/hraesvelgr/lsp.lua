local configs = require("hraesvelgr.configs.lsp")

vim.lsp.config("*", {
	on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
		configs.on_attach(client, bufnr)
	end,
	on_init = configs.on_init,
	capabilities = configs.capabilities,
	defaults = configs.defaults,
})

vim.lsp.enable({
	"bashls",
	"cmake",
	"clangd",
	"cssls",
	"html",
	"lua_ls",
	"pyright",
	"ts_ls",
	"gopls",
	"jdtls",
	"omnisharp",
})
