local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ serch = vim.fn.input("Grep > ") })
end, { desc = "Telescope find files" })

vim.keymap.set("n", "<leader>o", builtin.oldfiles)

