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
            }
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
