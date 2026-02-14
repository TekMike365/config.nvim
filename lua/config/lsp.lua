vim.lsp.enable({
	"pyright",
})

-- Diagnostics
vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	virtual_lines = {
		current_line = true,
	},
	update_in_insert = false,
	severity_sort = true,
})

-- show diagnostic at cursor in a floating window
vim.keymap.set("n", "<leader>i", "<c-w>d")

-- Keybinds
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename)
vim.keymap.set({"n", "x"}, "<leader>ra", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>ri", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>rt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>O", vim.lsp.buf.document_symbol)
-- CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|

-- Completion
-- (<c-x><c-o> uses vim.lsp.omnifunc, calling it doesn't work)
vim.keymap.set("i", "<c-space>", "<c-x><c-o>")

