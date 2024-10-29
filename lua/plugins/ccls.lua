return {
    "ranjithshegde/ccls.nvim",
    config = function()
        local ccls = require "ccls"
        ccls.setup {
            filetypes = { "c", "cpp" },
            lsp = {
                use_defaults = true,
            },
        }
    end
}
