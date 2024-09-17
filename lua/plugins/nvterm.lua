return {
    {
        "NvChad/nvterm",
        event = "VeryLazy",
        config = function()
            require("nvterm").setup({
                shell = vim.o.shell
            })

            vim.keymap.set('n', '<A-h>', function() require('nvterm.terminal').toggle('horizontal') end)
            vim.keymap.set('n', '<A-v>', function() require('nvterm.terminal').toggle('vertical') end)
            vim.keymap.set('n', '<A-i>', function() require('nvterm.terminal').toggle('float') end)

            vim.keymap.set('t', '<A-h>', function() require('nvterm.terminal').toggle('horizontal') end)
            vim.keymap.set('t', '<A-v>', function() require('nvterm.terminal').toggle('vertical') end)
            vim.keymap.set('t', '<A-i>', function() require('nvterm.terminal').toggle('float') end)
        end
    },
}
