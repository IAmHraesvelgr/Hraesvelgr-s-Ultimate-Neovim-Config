local on_attach = function(_, bufnr)
    local function opts(desc)
        return { buffer = bufnr, desc = "LSP " .. desc }
    end

    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts "Go to definition")
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation")
    vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")
    vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
    vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")

    vim.keymap.set("n", "<leader>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts "List workspace folders")

    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts "Go to type definition")
    vim.keymap.set("n", "<leader>ra", require "nvchad.lsp.renamer", opts "NvRenamer")

    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "Code action")
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts "Show references")
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem = {
    documentationFormat = { "markdown", "plaintext" },
    snippetSupport = true,
    preselectSupport = true,
    insertReplaceSupport = true,
    labelDetailsSupport = true,
    deprecatedSupport = true,
    commitCharactersSupport = true,
    tagSupport = { valueSet = { 1 } },
    resolveSupport = {
    properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
    },
  },
}

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "ts_ls", "cmake", "lua_ls", "clangd", "pyright", "csharp_ls" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities
    })
end
