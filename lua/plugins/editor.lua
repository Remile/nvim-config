return {
	"nvim-tree/nvim-tree.lua",
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	},
	"majutsushi/tagbar",
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    'voldikss/vim-floaterm',
    'github/copilot.vim',
    {
        'nvimdev/indentmini.nvim',
        event = 'BufEnter',
        config = function()
            require('indentmini').setup()
        end,
    },
}
