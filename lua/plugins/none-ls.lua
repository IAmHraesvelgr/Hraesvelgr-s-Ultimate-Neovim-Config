return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hraesvelgr.configs.none-ls")
	end,
}
