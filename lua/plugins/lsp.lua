return {
    {
        {
            'williamboman/mason.nvim',
            opts = {
                ensure_installed = {
                    "html-lsp",
                    "css-lsp",
                    "typescript-language-server",
                    "prettier",
                    "pyright",
                    "black",
                    "clangd",
                    "cmake-language-server",
                    "csharp-language-server",
                    "lua-language-server"
                }
            },
            config = function()
                require('mason').setup({
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
            end
        },
        { 'williamboman/mason-lspconfig.nvim' },
        { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
        { 'neovim/nvim-lspconfig' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/nvim-cmp' },
        { 'L3MON4D3/LuaSnip' },
        event = "VeryLazy"
    }
}
