require "custom.globals"

require "config"
require "custom"

vim.cmd([[colorscheme rose-pine]])

-- -- Create an autocmd group for Haste
-- vim.api.nvim_create_augroup("Haste", { clear = true })
--
-- -- Autocommand to set the filetype for .haste files
-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--     pattern = "*.haste",
--     callback = function()
--         vim.bo.filetype = "haste"
--     end,
-- })
--
-- vim.api.nvim_create_augroup("lox", { clear = true })
-- -- Autocommand to set the filetype for .lox files
-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--     pattern = "*.lox",
--     callback = function()
--         vim.bo.filetype = "lox"
--     end,
-- })
--
--
--
-- vim.api.nvim_create_augroup("lox", { clear = true })
-- -- Autocommand to set the filetype for .lune files
-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--     pattern = "*.lune",
--     callback = function()
--         vim.bo.filetype = "lune"
--     end,
-- })
