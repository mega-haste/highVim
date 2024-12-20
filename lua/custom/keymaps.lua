-- Helpers
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function mapfn(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Keymaps
mapfn('n', '<leader>rn', function()
  vim.o.relativenumber = not vim.o.relativenumber
end)
map('', '<C-s>', ':w<CR>')

-- Dismiss Noice Message
map("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- File manager keymaps
map('', "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
do
  local telescopeBuiltin = require('telescope.builtin')
  mapfn('n', "<leader>ff", telescopeBuiltin.find_files)
  mapfn('n', '<leader>fg', telescopeBuiltin.live_grep)
  mapfn('n', '<leader>fb', telescopeBuiltin.buffers)
  mapfn('n', '<leader>fh', telescopeBuiltin.help_tags)
end

-- BufferLine
map("n", "<leader>tn", ":BufferLineMoveNext<CR>")
map("n", "<leader>tb", ":BufferLineMovePrev<CR>")

map("n", "<TAB>", ":BufferLineCycleNext<CR>")
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>")

map("n", "<leader>tpc", ":BufferLinePickClose<CR>")
map("n", "<leader>tpp", ":BufferLinePick<CR>")
map("n", "<leader>tc", ":bdelete<CR>")

-- lsp keymaps
mapfn("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition" })
mapfn("n", "K", vim.lsp.buf.hover, { desc = "Lsp Hover" })
mapfn("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { desc = "Work Space Symbol" })
mapfn("n", "<leader>vd", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
mapfn("n", "[d", vim.diagnostic.goto_next, { desc = "Goto next diagnostic" })
mapfn("n", "]d", vim.diagnostic.goto_prev, { desc = "Goto prev diagnostic" })
mapfn("n", "<leader>vca", vim.lsp.buf.code_action, { desc = "Code actions" })
mapfn("n", "<leader>vrr", vim.lsp.buf.references, { desc = "Lsp references" })
mapfn("n", "<leader>vrn", vim.lsp.buf.rename, { desc = "Lsp rename" })
mapfn("n", "gl", vim.diagnostic.open_float, { desc = "Open diagnostic float" })

-- DAP keymaps
map("n", "<leader>db", "<CMD>DapToggleBreakpoint<CR>", { desc = "Debuger toggle breakpoint" })
map("n", "<leader>dr", "<CMD>DapContinue<CR>", { desc = "Starts or Continue debuger" })
