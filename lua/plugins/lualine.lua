return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        options = { theme = "catppuccin" },
        config = function()
            require('lualine').setup()
        end
    },
}
