-- Doge autodoc
vim.keymap.set("n", "<leader>doc", "<Plug>(doge-generate)")
vim.keymap.set("n", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("n", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
vim.keymap.set("i", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("i", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
vim.keymap.set("s", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("s", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
