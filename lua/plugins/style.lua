return {
	"Mofiqul/dracula.nvim",
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{
		'comfysage/evergarden',
		priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
		opts = {
			transparent_background = true,
    			contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
    			overrides = { }, -- add custom overrides
		}
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},
}
