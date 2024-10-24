return {
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            require("notify").setup({
                stages = "fade_in_slide_out",
                render = "simple",
                background_colour = "FloatShadow",
            })
            vim.notify = require("notify")
        end,
    },
}
