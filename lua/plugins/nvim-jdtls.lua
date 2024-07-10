return {
    {
        "mfussenegger/nvim-jdtls",
        config = function ()
            local lspconfig = {
                cmd = { vim.fn.stdpath("data") .. '/mason/bin/jdtls.cmd' },
                root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
            }

            require('jdtls').start_or_attach(lspconfig)
        end
    }
}
