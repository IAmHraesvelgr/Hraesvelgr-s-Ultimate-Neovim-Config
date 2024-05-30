return {
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function ()
            require("notify").setup({
                stages = "fade",
                render = "compact",
                background_colour = 'FloatShadow'
            })
            vim.notify = require("notify")

        end
    },
}
