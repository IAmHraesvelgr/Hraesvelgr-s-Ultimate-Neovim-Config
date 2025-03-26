return {
	{
		{
			"williamboman/mason.nvim",
			event = "VeryLazy",
			config = function()
				require("mason").setup({
					ui = {
						icons = {
							package_pending = " ",
							package_installed = "󰄳 ",
							package_uninstalled = " 󰚌",
						},

						keymaps = {
							toggle_server_expand = "<CR>",
							install_server = "i",
							update_server = "u",
							check_server_version = "c",
							update_all_servers = "U",
							check_outdated_servers = "C",
							uninstall_server = "X",
							cancel_installation = "<C-c>",
						},
					},

					max_concurrent_installers = 10,
				})
			end,
		},
		{
			"neovim/nvim-lspconfig",
			event = "User FilePost",
			config = function()
				require("hraesvelgr.configs.lsp").defaults()
			end,
		},
		{
			"hrsh7th/cmp-nvim-lsp",
			event = "InsertEnter",
		},
		{
			"hrsh7th/cmp-nvim-lua",
			event = "InsertEnter",
		},
		{
			"hrsh7th/cmp-buffer",
			event = "InsertEnter",
		},
		{
			"hrsh7th/cmp-path",
			event = "InsertEnter",
		},
		{
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			opts = function()
				return require("hraesvelgr.configs.cmp")
			end,
		},
		{
			"saadparwaiz1/cmp_luasnip",
			event = "InsertEnter",
		},
		{
			"L3MON4D3/LuaSnip",
			event = "InsertEnter",
			dependencies = { "rafamadriz/friendly-snippets" },
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load({ exclude = vim.g.vscode_snippets_exclude or {} })
				require("luasnip.loaders.from_vscode").lazy_load({ paths = vim.g.vscode_snippets_path or "" })

				require("luasnip.loaders.from_snipmate").load()
				require("luasnip.loaders.from_snipmate").lazy_load({ paths = vim.g.snipmate_snippets_path or "" })

				require("luasnip.loaders.from_lua").load()
				require("luasnip.loaders.from_lua").lazy_load({ paths = vim.g.lua_snippets_path or "" })

				vim.api.nvim_create_autocmd("InsertLeave", {
					callback = function()
						if
							require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
							and not require("luasnip").session.jump_active
						then
							require("luasnip").unlink_current()
						end
					end,
				})
			end,
		},
	},
}
