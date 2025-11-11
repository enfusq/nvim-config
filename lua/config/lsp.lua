vim.lsp.config('intelephense', {
	cmd = { 'intelephense', '--stdio' },
	filetypes = { 'php' },
	root_dir = vim.fs.dirname(vim.fs.find({ 'compser.json', '.git' }, { upwards = true })[1]),
	settings = {
		intelephense = {
			files = {
				maxSize = 5000000,
			},
		},
	},
})

vim.lsp.config('tsserver', {
	cmd = { 'typescript-language-server', '--stdio' },
	filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
	root_dir = vim.fs.dirname(vim.fs.find({ 'tsconfig.json', 'package.json', '.git' }, { upward = true })[1]),
	settings = {
		typescript = {
			format = {
				enable = true,
			},
		},
		javascript = {
			format = {
				enable = true,
			},
		},
	},
})


vim.lsp.enable('tsserver')
vim.lsp.enable('intelephense')
