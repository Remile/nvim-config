-- Color Scheme
-- vim.cmd[[colorscheme dracula]]
-- Theme: evergarden
-- require 'evergarden'.setup {
--   transparent_background = false,
--   contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
--   override_terminal = true,
--   style = {
--     tabline = { reverse = true, color = 'green' },
--     search = { reverse = false, inc_reverse = true },
--     types = { italic = true },
--     keyword = { italic = true },
--     comment = { italic = false },
--     sign = { highlight = false },
--   },
--   overrides = { }, -- add custom overrides
-- }

require("cyberdream").setup({
	transparent = true,
	terminal_colors = true
})

-- Syntax Highlight
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "go", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

  },
}

require('lualine').setup()

