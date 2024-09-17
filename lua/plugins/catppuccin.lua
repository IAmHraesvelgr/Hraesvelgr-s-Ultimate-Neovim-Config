return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = "mocha",
                transparent_background = true,
                no_italic = true,
                no_bold = true,
                no_underline = true,

                integrations = {
                    cmp = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    indent_blankline = {
                        enabled = true
                    },
                    mason = true,
                    noice = true,
                    telescope = {
                        enabled = true,
                        style = "nvchad"
                    },
                    dropbar = {
                        enabled = true,
                        color_mode = true
                    }
                },
                
                color_overrides = {
                    mocha = {
                        base = "#000000",
                        mantle = "#000000",
                        crust = "#000000",
                    },
                },
            })

            vim.cmd.colorscheme('catppuccin')
        end
    }
}
