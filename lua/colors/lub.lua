vim.o.background = 'dark'
vim.g.colors_name = 'Mei-Dark-Theme'

local set = vim.api.nvim_set_hl

-- [[Main and accesory panels - Bg, Application Frames, side Bars, Tabs, etc]]
local base = '#191724'
-- [[Secondary backgroudn atop base]]
local surface = '#2a273f'
-- [[Tertiary background atop surface. Panels that are more temporary in nature - like popovers, notifications, and dialogs.]]
local overlay = '#908caa'

-- [[High contrast foreground]]
local ntext = '#e0def4'

-- [[Ignored content, disabled elements and unfocused text]]
local mtext = '#'

-- [[Numbers]]
local nums = '#d19a66'
-- [[Secondary Content - Comments, punctuation and tab names]]
local subtle = '#908caa'

-- [[
-- Diagnostic Errors
-- Deleted Git Files
-- ]]
local lub = '#7F5EBE'

-- [[
--  Diagnostic Warnings
-- ]]

local mei = '#f6c177'

-- [[
--  Matching search background paired with base foreground
--  Modified git files
--  Booleans
-- ]]

local shiki = '#87B8E6'

-- [[
--  Renamed git files
-- ]]

local greenery = '#3e8fb0'

-- [[
--  Diagnostic Information
--  Git addition
-- ]]

local fog = '#9ccfd8'

-- [[
-- Diagnostic hints
-- Inline links
-- Merged and staged git modifications
-- ]]
local eyes = '#c4a7e7'
local eyesBright = '#c4a7e7'
-- [[ Cursorline background ]]

local highlightLow = '#'

-- [[ Selection Background ]]
local highlightMedium = '#'

-- [[
-- Borders
-- Cursor bg
-- ]]

local highlightHigh = '#'

vim.cmd('highlight Normal guibg=' .. base)
set(0, 'Comment', { fg = subtle, italic = true })
set(0, 'String', { fg = mei })
set(0, 'Keyword', { fg = greenery, bold = true })
set(0, 'Function', { fg = shiki })
set(0, 'Number', { fg = nums })

-- Auto-Complete
set(0, 'Pmenu', { fg = ntext, bg = overlay })
set(0, 'PmenuSel', { fg = overlay, bg = base, bold = true })
set(0, 'PmenuSbar', { fg = base })
set(0, 'PmenuThumb', { fg = '#888888' })

-- Status line (the one here at the bottom with the icons)
set(0, 'StatusLine', { fg = '#eeeeee', bg = subtle, bold = true })
set(0, 'StatusLineNC', { fg = '#aaaaaa', bg = '#2e2e2e', italic = true })

set(0, '@variable', { fg = shiki })
-- Here I configure Whichkey, another highlight group

-- Which-Key colors
set(0, 'WhichKey', { fg = shiki, bold = true })
set(0, 'WhichKeyGroup', { fg = surface })
set(0, 'WhichKeyDesc', { fg = '#eeeeee' })
set(0, 'WhichKeySeparator', { fg = '#aaaaaa' })
set(0, 'WhichKeyFloat', { bg = overlay })
set(0, 'WhichKeyBorder', { fg = subtle, bg = overlay })

-- Other colors like the keys, brackets and so on.
set(0, '@punctuation.bracket', { fg = eyesBright }) -- Dis is like, Neon Pink
set(0, '@constructor', { fg = eyes })
set(0, '@property', { fg = fog }) -- This affects keys

-- JSX
set(0, '@_jsx_element', { fg = shiki })
set(0, '@_jsx_element', { fg = shiki })
set(0, '@tag', { fg = shiki })
set(0, '@tag.builtin', { fg = shiki })

-- Intel
set(0, 'DiagnosticError', { fg = lub, underline = true })
set(0, 'DiagnosticError', { fg = lub, sp = mei, undercurl = true })
set(0, 'DiagnosticWarn', { fg = mei, undercurl = true, sp = '#ECBE7B' })
set(0, 'DiagnosticInfo', { fg = fog, underline = true })
set(0, 'DiagnosticHint', { fg = eyes, underline = true })
