local configs = require("hraesvelgr.configs.lsp")

local servers = {
	"bashls",
	"clangd",
	"cmake",
	"cssls",
	"html",
	"pyright",
	"ts_ls",
	"gopls",
	"lua_ls",
	"svelte",
	"omnisharp",
}

for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {
		on_attach = function(client, bufnr)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
			client.server_capabilities.semanticTokensProvider = nil
			configs.on_attach(client, bufnr)
		end,
		on_init = configs.on_init,
		capabilities = configs.capabilities,
		defaults = configs.defaults,
	})
	vim.lsp.enable(lsp)
end
