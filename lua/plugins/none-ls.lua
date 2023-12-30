return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,  -- Lua
                null_ls.builtins.diagnostics.rubocop,  -- Ruby
                null_ls.builtins.formatting.rubocop,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
