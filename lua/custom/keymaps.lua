local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function mapfn(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

mapfn('n', '<leader>rn', function()
	vim.o.relativenumber = not vim.o.relativenumber
end)

map('', '<C-s>', ':w<CR>')

-- Neotree keymaps
map('', '<C-n>', ':Neotree toggle<CR>')

