return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	diagnostics = { "nvim_lsp", "coc" },
	opts = {
		options = {
			numbers = "ordinal",
			separator_style = "slant", -- | "slope" | "thick" | "thin" | { 'any', 'any' },
			inducator = {
				style = "underline"
			},
			hover = {
				enabled = true,
				delay = 150,
				reveal = {'close'}
			}
		}
	}
}
