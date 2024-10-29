local conform = require("conform")

conform.setup({
    format_on_save = {
        -- I recommend these options. See :help conform.format for details.
        lsp_format = "fallback",
        timeout_ms = 500,
    },
    formatter_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier", stop_after_first = true }
    }
})
