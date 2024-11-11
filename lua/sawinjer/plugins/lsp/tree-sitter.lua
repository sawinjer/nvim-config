require("nvim-treesitter.configs").setup({
	ensure_installed = "all",
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<leader>h",
			node_incremental = "<leader>h",
			scope_incremental = false,
			node_decremental = "<bs>",
		},
	},
})
