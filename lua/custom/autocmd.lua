local api = vim.api

api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function (args)
        local conform = require("conform")
        conform.format({ bufnr = args.buf })
    end
})

