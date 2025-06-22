vim.g.mapleader = " "

local keymap = vim.keymap

--jk to exit insert mode
keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode"})

--clear highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})

--panes
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "split vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "split horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "resize equal splits"})
keymap.set("n", "<leader>sx", ":close<CR>", {desc = "close pane"})

--windows
keymap.set("n", "<leader>to", ":tabnew<CR>", {desc = "new tab"})
keymap.set("n", "<leader>tx", ":tabclose<CR>", {desc = "close tab"})
keymap.set("n", "<leader>tn", ":tabn<CR>", {desc = "next tab"})
keymap.set("n", "<leader>tp", ":tabp<CR>", {desc = "prev tab"})
keymap.set("n", "<leader>1", "1gt", { noremap = true, silent = true })
keymap.set("n", "<leader>2", "2gt", { noremap = true, silent = true })
keymap.set("n", "<leader>3", "3gt", { noremap = true, silent = true })
keymap.set("n", "<leader>4", "4gt", { noremap = true, silent = true })

--vertical scroll
keymap.set("n", "<C-d>", "20jzz", { noremap = true, silent = true })
keymap.set("n", "<C-u>", "20kzz", { noremap = true, silent = true })

--force hjkl
--keymap.set("i", "<Up>", "<Nop>")
--keymap.set("i", "<Down>", "<Nop>")
--keymap.set("i", "<Left>", "<Nop>")
--keymap.set("i", "<Right>", "<Nop>")
--keymap.set("n", "<Up>", "<Nop>")
--keymap.set("n", "<Down>", "<Nop>")
--keymap.set("n", "<Left>", "<Nop>")
--keymap.set("n", "<Right>", "<Nop>")

