local M = {}

M.base46 = {
	theme = "catppuccin",
	transparency = true,
}

M.ui = {
	statusline = {
		theme = "default",
		separator_style = "default",
	},
	cmp = {
		style = "default",
		icons_left = true,
	},
	telescope = {
		style = "bordered",
	},
	cheatsheet = {
		theme = "grid",
	},
	extended_integrations = {
		"trouble",
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
	signatures = true,
}

return M
