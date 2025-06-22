return {
	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G", "GBrowse" }, -- lazy-load on use
		dependencies = {
			{ "tpope/vim-rhubarb", lazy = true },
		},
	},
}
