local map = vim.keymap.set

map("n", "<Tab>", function()
	require("nvchad.tabufline").next()
end)

map("n", "<S-Tab>", function()
	require("nvchad.tabufline").prev()
end)

map("n", "<leader>bc", function()
	require("nvchad.tabufline").close_buffer()
end)

map("n", "<leader>br", function()
	require("nvchad.tabufline").move_buf(1)
end)

map("n", "<leader>bl", function()
	require("nvchad.tabufline").move_buf(-1)
end)

map("n", "<leader>ts", function()
	require("base46").toggle_transparency()
end)

map("n", "<leader>th", function()
	require("nvchad.themes").open({ style = "bordered" })
end)

map("n", "<leader>rr", function()
	require("nvchad.lsp.renamer")()
end)
