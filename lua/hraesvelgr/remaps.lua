local map = vim.keymap.set

-- Split View
map("n", "<leader>hs", function()
	vim.cmd("split")
end)
map("n", "<leader>vs", function()
	vim.cmd("vsplit")
end)

-- NvimTree
map("n", "<leader>et", vim.cmd.NvimTreeToggle)
map("n", "<leader>ee", vim.cmd.NvimTreeFocus)

-- Telescope
map("n", "<leader>ff", require("telescope.builtin").find_files, {})

-- Comment
map("n", "<leader>cc", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>cc", "gc", { desc = "toggle comment", remap = true })

-- Formatting
map("n", "<leader>fm", function()
	vim.lsp.buf.format()
end)

-- Stop bad habits
map({ "n", "i", "v" }, "<Up>", "<Nop>")
map({ "n", "i", "v" }, "<Left>", "<Nop>")
map({ "n", "i", "v" }, "<Right>", "<Nop>")
map({ "n", "i", "v" }, "<Down>", "<Nop>")
