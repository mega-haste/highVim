local lsp_zero = require("lsp-zero")
lsp_zero.preset("recommended")

lsp_zero.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'E',
		warn = 'W',
		hint = 'H',
		info = 'I',
	},
})

lsp_zero.setup()

