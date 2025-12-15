vim.lsp.enable({
	"clangd"
})

vim.diagnostic.config({
	virtual_lines = {
		current_line = true,
	},
	underline = true,
	update_in_insert = true,
	severity_sort = true,
})

-- show more when <C-?> is pressed
vim.keymap.set("n", "<C-_>", vim.diagnostic.open_float)

-- completion
vim.keymap.set("i", "<C-n>", "<C-X><C-O>")
vim.keymap.set("i", "<C-space>", vim.lsp.buf.signature_help)

vim.keymap.set("n", "<leader>ra", vim.lsp.buf.code_action)
vim.keymap.set("x", "<leader>ra", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { noremap = true })
vim.keymap.set("n", "<leader>gs", vim.lsp.buf.document_symbol)

