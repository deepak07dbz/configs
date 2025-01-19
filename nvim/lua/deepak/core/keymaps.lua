vim.g.mapleader = " "

local keymap = vim.keymap

--jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

--clear highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

--panes
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

--windows
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

--toggle tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--force hjkl
--keymap.set("i", "<Up>", "<Nop>")
--keymap.set("i", "<Down>", "<Nop>")
--keymap.set("i", "<Left>", "<Nop>")
--keymap.set("i", "<Right>", "<Nop>")

