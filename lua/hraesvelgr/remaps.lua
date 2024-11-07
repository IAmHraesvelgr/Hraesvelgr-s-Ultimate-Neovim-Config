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

-- Zen Mode
map("n", "<leader>zm", vim.cmd.ZenMode)

-- Comment
map("n", "<leader>cc", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>cc", "gc", { desc = "toggle comment", remap = true })

-- Formatting
map("n", "<leader>fm", function()
	vim.lsp.buf.format()
end)

-- Volt Plugins
map("n", "<leader>sk", function()
	vim.cmd.ShowkeysToggle()
end)
