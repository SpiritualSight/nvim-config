return {
	-- https://github.com/nvim-treesitter/nvim-treesitter
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	dependencies = {
		-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		{
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
	},
	build = ':TSUpdate',
	opts = {
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		auto_install = true,
		ensure_installed = {
			'lua',
			'comment',
			'go',
			'gomod',
			'gowork',
			'gosum',
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
