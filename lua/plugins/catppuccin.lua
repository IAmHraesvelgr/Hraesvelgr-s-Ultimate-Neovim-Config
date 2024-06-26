return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = "mocha",
                term_colors = true,
                default_integrations = true,
                integrations = {
                    cmp = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    fidget = true,
                    mason = true,
                    noice = true,
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                            ok = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                            ok = { "underline" },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                },
            })
            -- vim.cmd.colorscheme "catppuccin-mocha"
            -- vim.cmd [[syntax enable]]
        end
    }
}
