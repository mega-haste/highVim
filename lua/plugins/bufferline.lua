return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	diagnostics = { "nvim_lsp", "coc" },
	opts = {
		options = {
			hover = {
				enabled = true,
				delay = 150,
				reveal = {'close'}
			}
		}
	}
}
