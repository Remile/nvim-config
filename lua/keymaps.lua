
local map = vim.api.nvim_set_keymap

--[[
NVIM-TREE
--]]
-- 按 n 打开 NvimTree
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
map('n', '<S-p>', [[:bprev<CR>]], {})
map('n', '<S-n>', [[:bnext<CR>]], {})


--[[
DAP
--]]
-- nvim-dap keymappings
-- Press f5 to debug
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- Press CTRL + b to toggle regular breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + c to toggle Breakpoint with Condition
map('n', '<C-c>', [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
-- Press CTRL + l to toggle Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Pressing F10 to step over
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
-- Pressing F11 to step into
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
-- Pressing F12 to step out
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
-- Press F6 to open REPL
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
-- Press dl to run last ran configuration (if you used f5 before it will re run it etc)
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})
-- Press Ctrl+d to toggle debug mode, will remove NvimTree also
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})


--[[
TeleScope
--]]
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})

-- Tagbar
map('n', 'm', [[:TagbarToggle<CR>]], {})

--[[
Lspsaga
--]]
-- float terminal
map('n', '<leader>t', [[:Lspsaga term_toggle<CR>]], {})
-- hover doc
map('n', '<leader>h', [[:Lspsaga hover_doc<CR>]], {})
-- callhierarchy
map('n', '<leader>ci', [[:Lspsaga incoming_calls<CR>]], {})
map('n', '<leader>co', [[:Lspsaga outgoing_calls<CR>]], {})
-- code action
map('n', '<leader>ca', [[:Lspsaga code_action<CR>]], {})
-- Definition
map('n', '<leader>pd', [[:Lspsaga peek_definition<CR>]], {})
map('n', '<leader>ptd', [[:Lspsaga peek_type_definition<CR>]], {})
-- Rename
map('n', '<leader>rn', [[:Lspsaga rename<CR>]], {})


