return {
	"ggandor/leap.nvim",
	config = function ()
		local leap = require("leap")
		leap.setup {}

		leap.create_default_mappings()
	end
}
