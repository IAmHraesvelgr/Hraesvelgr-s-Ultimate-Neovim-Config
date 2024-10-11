return {
    {
        "folke/zen-mode.nvim",
        event = "VeryLazy",
        opts = {},
        config = function()
            vim.keymap.set("n", "<leader>zm", vim.cmd.ZenMode)
        end,
    },
}
