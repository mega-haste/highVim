local lspconfig = require("lspconfig")

lspconfig.tsserver.setup {
	cmd = { 'tsserver', '--stdio' },
}

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				version = 'Lua 5.4',
				path = {
					'?.lua',
					'?/init.lua',
					vim.fn.expand'~/.luarocks/share/lua/5.1/?.lua',
					vim.fn.expand'~/.luarocks/share/lua/5.1/?/init.lua',
					'/usr/share/5.4/?.lua',
					'/usr/share/lua/5.4/?/init.lua',
				},
			},
			workspace = {
				library = {
					vim.fn.expand'~/.luarocks/share/lua/5.1',
					'/usr/share/lua/5.4',
				},
			},
		},
	}
}

