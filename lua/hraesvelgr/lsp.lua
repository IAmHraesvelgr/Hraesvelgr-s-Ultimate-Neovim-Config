local configs = require("hraesvelgr.configs.lsp")

local servers = {
	"bashls",
	"cmake",
	"clangd",
	"cssls",
	"html",
	"pyright",
	"ts_ls",
	"gopls",
	"jdtls",
	"v_analyzer",
	"omnisharp",
}

for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {
		on_attach = function(client, bufnr)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
			configs.on_attach(client, bufnr)
		end,
		on_init = configs.on_init,
		capabilities = configs.capabilities,
		defaults = configs.defaults,
	})
end

vim.lsp.enable({
	"bashls",
	"cmake",
	"clangd",
	"cssls",
	"html",
	"pyright",
	"ts_ls",
	"gopls",
	"jdtls",
	"lua_ls",
	"v_analyzer",
	"omnisharp",
})
