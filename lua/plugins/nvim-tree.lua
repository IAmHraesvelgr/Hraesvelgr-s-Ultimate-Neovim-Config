return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		keys = { "<leader>ee", "<leader>et" },
		dependencies = {
			{
				"nvim-tree/nvim-web-devicons",
				lazy = true,
				opts = function()
					return { override = require("nvchad.icons.devicons") }
				end,
				config = function(_, opts)
					require("nvim-web-devicons").setup(opts)
				end,
			},
		},
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup({
				filters = { dotfiles = false },
				disable_netrw = true,
				hijack_cursor = true,
				sync_root_with_cwd = true,
				update_focused_file = {
					enable = true,
					update_root = false,
				},
				view = {
					width = 30,
					preserve_window_proportions = true,
				},
				renderer = {
					root_folder_label = false,
					highlight_git = true,
					indent_markers = { enable = true },
					icons = {
						glyphs = {
							default = "󰈚",
							folder = {
								default = "",
								empty = "",
								empty_open = "",
								open = "",
								symlink = "",
							},
							git = { unmerged = "" },
						},
					},
				},
			})
		end,
	},
}
