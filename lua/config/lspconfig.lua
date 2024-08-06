local lspconfig = require("lspconfig")

lspconfig.tsserver.setup {
	cmd = { 'tsserver', '--stdio' },
}

