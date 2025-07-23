vim.o.background = 'dark'
vim.g.colors_name = 'Mei-Dark-Theme'

local set = vim.api.nvim_set_hl

-- Bg Color and Text
vim.cmd 'highlight Normal guibg=#240510'

-- Comments
set(0, 'Comment', { fg = '#a53860', italic = true })

-- Strings
set(0, 'String', { fg = '#f9dbbd' })

-- Keywords
set(0, 'Keyword', { fg = '#da627d', bold = true })

-- Functions
set(0, 'Function', { fg = '#ffa5ab' })

-- Numbers
set(0, 'Number', { fg = '#d19a66' })

-- Auto-Complete
set(0, 'Pmenu', { fg = '#f9dbbd', bg = '#240510' })
set(0, 'PmenuSel', { fg = '#240510', bg = '#f9dbbd', bold = true })
set(0, 'PmenuSbar', { fg = '#000000' })
set(0, 'PmenuThumb', { fg = '#888888' })

-- Status line (the one here at the bottom with the icons)
set(0, 'StatusLine', { fg = '#eeeeee', bg = '#a53860', bold = true })
set(0, 'StatusLineNC', { fg = '#aaaaaa', bg = '#2e2e2e', italic = true })

-- And Idk what else I might add LMAO

-- Here I configure Whichkey, another highlight group

-- Which-Key colors
set(0, 'WhichKey', { fg = '#ffa5ab', bold = true })
set(0, 'WhichKeyGroup', { fg = '#f9dbbd' })
set(0, 'WhichKeyDesc', { fg = '#eeeeee' })
set(0, 'WhichKeySeparator', { fg = '#aaaaaa' })
set(0, 'WhichKeyFloat', { bg = '#240510' })
set(0, 'WhichKeyBorder', { fg = '#a53861', bg = '#240510' })

-- Other colors like the keys, brackets and so on.
set(0, '@punctuation.bracket', { fg = '#ff79c6' }) -- Dis is like, Neon Pink
set(0, '@constructor', { fg = '#ff79c6' })
set(0, '@property', { fg = '#ffa5ab' }) -- This affects keys
set(0, 'Special', { fg = '#ff79c6' })

-- JSX
set(0, '@_jsx_element', { fg = '#ffa5ab' })
set(0, '@_jsx_element', { fg = '#ffa5ab' })
set(0, '@tag', { fg = '#ffa5ab' })
set(0, '@tag.builtin', { fg = '#ffa5ab' })
