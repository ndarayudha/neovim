vim.g.mapleader = " "

local bind = vim.keymap.set

bind("i", "jk", "<ESC>")

bind("v", "J", ":m '>+1<CR>gv=gv")
bind("v", "K", ":m '<-2<CR>gv=gv")

bind("n", "J", "mzJ`z")
bind("n", "n", "nzzzv")
bind("n", "N", "Nzzzv")

bind("x", "<leader>p", "\n_dP")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- window
bind("n", "<leader>sh", "<C-w>v")
bind("n", "<leader>sv", "<C-w>s")
bind("n", "<leader>se", "<C-w>=")
bind("n", "<leader>sx", ":close<CR>")
bind("n", "<leader>h", "<C-w>h<CR>")
bind("n", "<leader>j", "<C-w>j<CR>")
bind("n", "<leader>k", "<C-w>k<CR>")
bind("n", "<leader>l", "<C-w>l<CR>")

-- select all
bind("n", "<leader>a", "gg<S-v>G")

-- delete a word backwards
bind("n", "dw", "vb_d")

-- tab
bind("n", "<leader>to", ":tabnew<CR>", {}) -- open new tab
bind("n", "<leader>tx", ":tabclose<CR>", {}) -- close current tab
bind("n", "<leader>tn", ":tabn<CR>", {}) -- go to next tab
bind("n", "<leader>tp", ":tabp<CR>", {}) -- go to previous tab

-- bind("n", "K", vim.lsp.buf.hover, {})
bind("n", "gd", vim.lsp.buf.definition, {})
bind({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})


