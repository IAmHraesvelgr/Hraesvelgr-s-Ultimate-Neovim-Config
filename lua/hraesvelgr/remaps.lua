vim.g.mapleader = " "

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})

-- Nvim Tree
vim.keymap.set('n', '<leader>et', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>ee', vim.cmd.NvimTreeFocus)

-- ZenMode
vim.keymap.set('n', '<leader>zm', vim.cmd.ZenMode)

-- NvTerm
vim.keymap.set('n', '<A-h>', function() require('nvterm.terminal').toggle('horizontal') end)
vim.keymap.set('n', '<A-v>', function() require('nvterm.terminal').toggle('vertical') end)
vim.keymap.set('n', '<A-i>', function() require('nvterm.terminal').toggle('float') end)

vim.keymap.set('t', '<A-h>', function() require('nvterm.terminal').toggle('horizontal') end)
vim.keymap.set('t', '<A-v>', function() require('nvterm.terminal').toggle('vertical') end)
vim.keymap.set('t', '<A-i>', function() require('nvterm.terminal').toggle('float') end)
