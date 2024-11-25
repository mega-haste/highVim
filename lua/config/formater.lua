local conform = require("conform")

conform.setup({
  format_on_save = function(bufnr)
    local bufname = vim.api.nvim_buf_get_name(bufnr)

    -- Disable file formatting on any temporary buffer contents
    if bufname:match("premake5.lua") then
      return
    else
      return {
        lsp_format = "fallback",
        timeout_ms = 500,
        lsp_fallback = true,
      }
    end
  end,
  formatter_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true }
  }
})
