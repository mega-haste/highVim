return {
	"nvim-telescope/telescope.nvim",
	opts = {},
	config = function ()
		local telescope = require("telescope")
		local extensions = {"noice"}
		for _, extension in ipairs(extensions) do
			telescope.load_extension(extension)
		end
	end,
}
