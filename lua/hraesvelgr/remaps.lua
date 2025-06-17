local map = vim.keymap.set

map("n", "<leader>hs", function()
	vim.cmd("split")
end)
map("n", "<leader>vs", function()
	vim.cmd("vsplit")
end)

map("n", "<leader>et", vim.cmd.NvimTreeToggle)
map("n", "<leader>ee", vim.cmd.NvimTreeFocus)

map("n", "<leader>ff", require("telescope.builtin").find_files, {})

map("n", "<leader>cc", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>cc", "gc", { desc = "toggle comment", remap = true })

map("n", "<leader>fm", function()
	require("conform").format()
end)

map({ "n", "i", "v" }, "<Up>", "<Nop>")
map({ "n", "i", "v" }, "<Left>", "<Nop>")
map({ "n", "i", "v" }, "<Right>", "<Nop>")
map({ "n", "i", "v" }, "<Down>", "<Nop>")
