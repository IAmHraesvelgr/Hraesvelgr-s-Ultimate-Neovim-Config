vim.g.mapleader = " "

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})

-- Nvim Tree
vim.keymap.set('n', '<leader>et', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>ee', vim.cmd.NvimTreeFocus)

-- ZenMode
vim.keymap.set('n', '<leader>zm', vim.cmd.ZenMode)
