local configs = require("hraesvelgr.configs.lsp")
local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities
local defaults = configs.defaults

local lspconfig = require("lspconfig")

local servers = {
	"bashls",
	"cmake",
	"clangd",
	"cssls",
	"html",
	"lua_ls",
	"pyright",
	"ts_ls",
	"jdtls",
}

lspconfig.omnisharp.setup({
	cmd = {
		"omnisharp",
		"-z",
		"--hostPID",
		tostring(vim.fn.getpid()),
		"DotNet:enablePackageRestore=false",
		"--encoding",
		"utf-8",
		"--languageserver",
		on_attach = function(client, bufnr)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
			on_attach(client, bufnr)
		end,
	},
})

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = function(client)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
			on_attach()
		end,
		capabilities = capabilities,
		defaults = defaults,
	})
end
