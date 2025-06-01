return {
	{
		"hrsh7th/nvim-cmp",
		enabled = false,
	},

	{
		"saghen/blink.cmp",
		version = "1.*",
		event = { "InsertEnter", "CmdLineEnter" },
		opts = {
			snippets = { preset = "luasnip" },
			cmdline = { enabled = true },
			appearance = { nerd_font_variant = "normal" },
			fuzzy = {
				prebuilt_binaries = {
					download = false,
				},
				implementation = "lua",
			},
			sources = { default = { "lsp", "snippets", "buffer", "path" } },

			keymap = {
				preset = "default",
				["<CR>"] = { "accept", "fallback" },
				["<C-b>"] = { "scroll_documentation_up", "fallback" },
				["<C-f>"] = { "scroll_documentation_down", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			},

			completion = {
				ghost_text = { enabled = true },
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 200,
					window = { border = "single" },
				},
			},
		},
	},
}
