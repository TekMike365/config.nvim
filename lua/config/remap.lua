-- window remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pe", vim.cmd.Ve)
vim.keymap.set("n", "<leader>q", "<C-w>c")

-- delete line
vim.keymap.set("n", "dj", "dd")

-- select all
vim.keymap.set("n", "vA", "ggvG")

-- comment block
vim.keymap.set("x", "<leader>k", "gc", { remap=true })
vim.keymap.set("n", "<leader>k", "Vgc", { remap=true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
-- cursor stay in place when "J"
vim.keymap.set("n", "J", "mzJ`z")
-- when half-page scrolling, keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- when search scrolling, keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest keymap ever
-- keeps buffer when pasted over highlight
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("x", "<leader>pp", "\"_dP")

-- paste from keyboard
vim.keymap.set("x", "<C-p>", "\"+p")
vim.keymap.set("n", "<C-p>", "\"+p")
vim.keymap.set("x", "<C-P>", "\"+P")
vim.keymap.set("n", "<C-P>", "\"+P")

-- copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("x", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete & don't save
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- never press Q
vim.keymap.set("n", "Q", "<nop>")

-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- run make
vim.keymap.set("n", "<leader>mk", "<cmd>!make<CR>", { silent = true })

