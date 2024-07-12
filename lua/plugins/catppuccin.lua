return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                transparent_background = true,
                term_colors = true,
                default_integrations = true,
                integrations = {
                    barbecue = {
                        dim_dirname = true,
                        bold_basename = true,
                        dim_context = false,
                        alt_background = false,
                    },
                    mason = true,
                    noice = true,
                    cmp = true,
                    notify = true,
                    nvimtree = true,
                    telescope = true,
                    lsp_trouble = true,
                }
            })

            require("catppuccin").setup {
                custom_highlights = function(colors)
                    return {
                        Comment = { fg = colors.flamingo },
                        TabLineSel = { bg = colors.pink },
                        CmpBorder = { fg = colors.surface2 },
                        Pmenu = { bg = colors.none },
                    }
                end
            }

            vim.cmd('colorscheme catppuccin')
        end
    }
}
