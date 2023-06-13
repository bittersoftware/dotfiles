vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set("n", "<leader>bf", ":bfirst<cr>")
vim.keymap.set("n", "<leader>bl", ":blast<cr>")
vim.keymap.set("n", "<leader>bn", ":bnext<cr>")
vim.keymap.set("n", "<leader>bp", ":bprevious<cr>")
vim.keymap.set("n", "<leader>bco", ":%bd|e#<cr>")

--SymbolsOutline change modes
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("i", "jk", "<ESC>")

-- move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- cursor position
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep yank saved to paste with p
vim.keymap.set("x", "<leader>v", "\"_dP")

-- Avoid accidental quits
vim.keymap.set("n", "Q", "<nop>")

-- tmux session
-- vim.keymap.set("n", "<C-f>", "<cmd>silient !tmux neww tmux-sessionizer<CR>")

-- yank to system clipoard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Replace current word across the file
vim.keymap.set("n", "<leader>rr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Rename symbol
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
