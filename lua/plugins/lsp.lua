return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    
    -- Hrsh7th Code Completion Suite
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/vim-vsnip",

    -- DAP
    "mfussenegger/nvim-dap",
    { "nvim-neotest/nvim-nio" },
    { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} },
    
    -- Sage
    {
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({
                definition = {
                    keys = {
                        edit = '<leader>o'
                    }
                }
            })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        }
    },
}
