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
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/nvim-cmp" },
        {
            "L3MON4D3/LuaSnip",
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load { exclude = vim.g.vscode_snippets_exclude or {} }
                require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.vscode_snippets_path or "" }

                -- snipmate format
                require("luasnip.loaders.from_snipmate").load()
                require("luasnip.loaders.from_snipmate").lazy_load { paths = vim.g.snipmate_snippets_path or "" }

                -- lua format
                require("luasnip.loaders.from_lua").load()
                require("luasnip.loaders.from_lua").lazy_load { paths = vim.g.lua_snippets_path or "" }

                vim.api.nvim_create_autocmd("InsertLeave", {
                    callback = function()
                        if
                            require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
                            and not require("luasnip").session.jump_active
                        then
                            require("luasnip").unlink_current()
                        end
                    end,
                })
            end
        },
        { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
        event = "VeryLazy",
    },
}
