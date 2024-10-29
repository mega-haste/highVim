return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	opts = {
		defaults = {
			file_ignore_patterns = {
				"node_modules",
			},
		},
	},
	config = function ()
		local telescope = require("telescope")
		telescope.setup {
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
			},
		}
		local extensions = {"noice"}
		for _, extension in ipairs(extensions) do
			telescope.load_extension(extension)
		end
	end,
}
