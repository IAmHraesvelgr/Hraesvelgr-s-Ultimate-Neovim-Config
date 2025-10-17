local M = {}

M.base46 = {
	theme = "catppuccin",
}

M.ui = {
	statusline = {
		theme = "vscode_colored",
	},
	cmp = {
		icons_left = true,
		lspkind_text = true,
		style = "flat_dark",
		format_colors = {
			lsp = true,
			icon = "󱓻",
		},
	},
	telescope = {
		style = "bordered",
	},
}

M.nvdash = {
	load_on_startup = true,
	header = {
		",_,_,_,_,_,_,_,_,_,_|_______________________________________________________",
		"|#|#|#|#|#|#|#|#|#|#|______________________________________________________/",
		"'-'-'-'-'-'-'-'-'-'-|-----------------------------------------------------' ",
		"                                                                            ",
		"                                 Hraesvelgr                                 ",
		"                                                                            ",
		"                             Powered By  eovim                            ",
		"                                                                            ",
		"                                                                            ",
	},
}

M.colorify = {
	enabled = true,
	mode = "virtual",
	virt_text = "󱓻 ",
	highlight = { hex = true, lspvars = true },
}

M.lsp = {
	signature = true,
}

return M
