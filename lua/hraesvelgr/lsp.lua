local configs = require("hraesvelgr.configs.lsp")
local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities
local defaults = configs.defaults

local lspconfig = require("lspconfig")

local servers = {
	"bashls",
	"clangd",
	"cmake",
	"omnisharp",
	"cssls",
	"gopls",
	"html",
	"lua_ls",
	"pyright",
	"ts_ls",
	"rust_analyzer",
	"jdtls",
}

for _, lsp in ipairs(servers) do
	-- Temp fix for Omnisharp
	if lsp == "omnisharp" then
		lspconfig[lsp].setup({
			on_init = on_init,
			on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
				on_attach()
			end,
			capabilities = capabilities,
			defaults = defaults,
			cmd = {
				"omnisharp",
				"-z",
				"DotNet:enablePackageRestore=false",
				"--encoding",
				"utf-8",
				"--languageserver",
				"Sdk:IncludePrereleases=true",
			},
		})
	elseif lsp == "clangd" then
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
	else
		lspconfig[lsp].setup({
			on_init = on_init,
			on_attach = on_attach(),
			capabilities = capabilities,
			defaults = defaults,
		})
	end
end
