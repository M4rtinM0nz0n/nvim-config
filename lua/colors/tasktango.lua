vim.o.background = 'dark'
vim.g.colors_name = 'TaskTango-Dark-Theme'
local set = vim.api.nvim_set_hl

-- Bg Color and Text
vim.cmd 'highlight Normal guibg=#000814'

-- Comments
set(0, 'Comment', { fg = '#8ecae6', italic = true })

-- Strings
set(0, 'String', { fg = '#ffb703' })

-- Keywords
set(0, 'Keyword', { fg = '#c678dd', bold = true })

-- Functions
set(0, 'Function', { fg = '#219ebc' })

-- Numbers
set(0, 'Number', { fg = '#d19a66' })
