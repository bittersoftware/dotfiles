-- remove trailing white spaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]]
})

-- format on save
vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup("format", { clear = true }),
    -- buffer = vim.current.buffer,
    callback = function()
        vim.lsp.buf.format()
    end,
})


-- stbt snapshot
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "*/max/**.py" },
    group = vim.api.nvim_create_augroup("snap", { clear = true }),
    callback = function()
        vim.fn.jobstart({ "python3", "stbt_rig.py", "snapshot" }, {
            stdout_buffered = true,
            on_stdout = function(_, data)
                if data then
                    print(data)
                end
            end,
        })
    end
})
