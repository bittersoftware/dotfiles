-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
--
vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set("n", "<leader>bf", ":bfirst<cr>")
vim.keymap.set("n", "<leader>bl", ":blast<cr>")
vim.keymap.set("n", "<S-L>", ":bnext<cr>")
vim.keymap.set("n", "<S-H>", ":bprevious<cr>")
vim.keymap.set("n", "<leader>bco", ":%bd|e#<cr>")
vim.keymap.set("n", "<leader>bc", ":bd")
vim.keymap.set("n", "<leader>bcc", ":bd!")

--change modes
vim.keymap.set("n", "<leader>ww", ":w<cr>")
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

-- Formatter
vim.keymap.set("n", "<leader>wp", ":Prettier<cr>")
