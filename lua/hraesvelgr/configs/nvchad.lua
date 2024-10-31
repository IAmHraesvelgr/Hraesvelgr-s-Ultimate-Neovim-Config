local map = vim.keymap.set

-- Tabufline
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

-- Terminal
map({ "n", "t" }, "<A-i>", function()
	require("nvchad.term").toggle({ pos = "float", id = "floatTerm" })
end)

map({ "n", "t" }, "<A-h>", function()
	require("nvchad.term").toggle({ pos = "bo sp", id = "spTerm" })
end)

map({ "n", "t" }, "<A-v>", function()
	require("nvchad.term").toggle({ pos = "bo vsp", id = "vspTerm" })
end)

-- Themes
map("n", "<leader>ts", function()
	require("base46").toggle_transparency()
end)

map("n", "<leader>th", function()
	require("nvchad.themes").open()
end)

-- Rename
map("n", "<leader>rr", function()
	require("nvchad.lsp.renamer")()
end)
