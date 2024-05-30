return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        options = { theme = "rose-pine" },
        config = function ()
            require('lualine').setup()
        end
    },
}
