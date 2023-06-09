require('gitsigns').setup {
    on_attach = function(bufnr)
        local function map(mode, lhs, rhs, opts)
            opts = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
            vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
        end

        -- Actions
        map('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>')
        map('n', '<leader>gb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
        map('n', '<leader>gd', '<cmd>Gitsigns diffthis<CR>')
        map('n', '<leader>gD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
    end
}
