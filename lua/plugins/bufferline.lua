return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            local bufferline = require("bufferline")
            bufferline.setup({
                options = {
                    style_preset = {
                        bufferline.style_preset.minimal,
                    },
                    mode = "buffers",
                    themeable = true,
                    custom_filter = function (buf_number)
                        if vim.fn.bufname(buf_number) == '' then
                            return false
                        end
                        return true
                    end
                },
            })

            vim.keymap.set("n", "<leader>bd", function()
                vim.cmd("bdelete!")
            end)
            vim.keymap.set("n", "<Tab>", function()
                vim.cmd("BufferLineCycleNext")
            end)
            vim.keymap.set("n", "<S-Tab>", function()
                vim.cmd("BufferLineCyclePrev")
            end)
        end,
    },
}
