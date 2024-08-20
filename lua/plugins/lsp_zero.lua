return {
	'VonHeikemen/lsp-zero.nvim',
	lazy = true,
	branch = "v1.x",
	dependencies = {
      	-- LSP support
		'neovim/nvim-lspconfig',

      	-- Autocompletetion
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'saadparwaiz1/cmp_luasnip',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-nvim-lua',
		'hrsh7th/cmp-cmdline',

      	-- Snippets
		'L3MON4D3/LuaSnip',
		'rafamadriz/friendly-snippets',
	},
}
