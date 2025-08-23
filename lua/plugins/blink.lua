return {
	"saghen/blink.cmp",
	event = { "InsertEnter", "CmdLineEnter" },
	opts = require("hraesvelgr.configs.blink"),
	config = function()
		dofile(vim.g.base46_cache .. "blink")
	end,
}
