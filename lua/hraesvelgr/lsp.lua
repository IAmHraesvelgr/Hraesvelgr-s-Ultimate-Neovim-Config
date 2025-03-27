local configs = require("hraesvelgr.configs.lsp")
local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local servers = { "bashls", "clangd", "cmake", "omnisharp", "cssls", "gopls", "html", "lua_ls", "pyright", "ts_ls" }

for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {
		on_attach = function()
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
			on_attach()
		end,
		on_init = on_init,
		capabilities = capabilities,
	})
end
