return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = false,
                no_italic = true,
                no_bold = true,
                no_underline = true,

                integrations = {
                    cmp = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    indent_blankline = {
                        enabled = true,
                    },
                    mason = true,
                    noice = true,
                    telescope = {
                        enabled = true,
                        style = "nvchad",
                    },
                    dropbar = {
                        enabled = true,
                        color_mode = true,
                    },
                },
            })

            vim.cmd.colorscheme('catppuccin')
        end,
    },
}
