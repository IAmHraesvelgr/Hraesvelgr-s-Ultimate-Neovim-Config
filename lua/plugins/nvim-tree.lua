return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            vim.keymap.set('n', '<leader>et', vim.cmd.NvimTreeToggle)
            vim.keymap.set('n', '<leader>ee', vim.cmd.NvimTreeFocus)

            require('nvim-tree').setup()
        end
    },
}
