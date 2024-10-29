return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		
		highlight = {
    		enable = true,
		}
	},
	config = function()
		vim.cmd [[ TSUpdate ]]
		require'nvim-treesitter.configs'.setup {
			highlight = {
				enable = true
			}
		}
	end
}
