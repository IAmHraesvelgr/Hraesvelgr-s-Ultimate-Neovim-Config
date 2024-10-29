return {
    {
        {
            "williamboman/mason.nvim",
            config = function()
                require("mason").setup({
                    ui = {
                        icons = {
                            package_pending = " ",
                            package_installed = "󰄳 ",
                            package_uninstalled = " 󰚌",
                        },

                        keymaps = {
                            toggle_server_expand = "<CR>",
                            install_server = "i",
                            update_server = "u",
                            check_server_version = "c",
                            update_all_servers = "U",
                            check_outdated_servers = "C",
                            uninstall_server = "X",
                            cancel_installation = "<C-c>",
                        },
                    },

                    max_concurrent_installers = 10,
                })
            end,
        },
        {
            "williamboman/mason-lspconfig.nvim",
            config = function()
                require("mason-lspconfig").setup({
                    ensure_installed = {
                        "html",
                        "cssls",
                        "ts_ls",
                        "pyright",
                        "clangd",
                        "cmake",
                        "csharp_ls",
                        "lua_ls",
                    },
                })
            end,
        },
        { "neovim/nvim-lspconfig" },
        { "hrsh7th/cmp-nvim-lsp" },
        { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
        { "hrsh7th/nvim-cmp" },
        { "L3MON4D3/LuaSnip" },
        event = "VeryLazy",
    },
}
