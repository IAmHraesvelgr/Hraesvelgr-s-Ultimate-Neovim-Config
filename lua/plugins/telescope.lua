return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
        event = "VeryLazy",
        config = function()
            vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
        end
    },
}
