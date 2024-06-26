return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        config = function()
            local configs = require('nvim-treesitter.configs')

            configs.setup({
                ensure_installed = { 'lua' },
                sync_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
}
