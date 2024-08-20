return {
	"NvChad/nvim-colorizer.lua",
	config = function ()
		require("colorizer").setup {
			css = true,
			css_fn = true,
			mode = "virtualtext",
			virtualtext = "■",
			tailwind = true,
			sass = {
				enable = true,
				parsers = {
					"css",
				},
			},
		}
	end
}
