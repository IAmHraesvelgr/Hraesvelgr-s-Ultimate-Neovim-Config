local M = {}

M.base46 = {
	theme = "catppuccin",
}

M.ui = {
	statusline = {
		theme = "default",
	},
	cmp = {
		style = "flat_dark",
		icons_left = true,
	},
	telescope = {
		style = "borderless",
	},
	cheatsheet = {
		theme = "grid",
	},
	extended_integrations = {
		"trouble",
		"noice",
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
