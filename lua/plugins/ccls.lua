return {
    -- "ranjithshegde/ccls.nvim",
    config = function()
        local ccls = require "ccls"
        ccls.setup {
            filetypes = { "c", "cpp" },
            lsp = {
                use_defaults = true,
                root_dir = vim.fs.dirname(vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1]),

                init_options = {
                    index = {
                        threads = 0,
                    },

                    clang = {
                        excludeArgs = { "-frounding-math" },
                    },
                },
            },
        }
    end
}
