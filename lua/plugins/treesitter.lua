return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",

	opts = {
		ensure_installed = { "lua", "vim", "c", "markdown", "php", "rust", "typescript", "javascript" },
		sync_install = true,
		auto_install = true
	}
}
