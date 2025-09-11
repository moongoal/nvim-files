-- PAPERPLANE
-- created on https://nvimcolors.com

-- Clear existing highlights and reset syntax
vim.cmd('highlight clear')
vim.cmd('syntax reset')

-- Basic UI elements
vim.cmd('highlight Normal guibg=#fff4e0 guifg=#1b2d74')
vim.cmd('highlight NonText guibg=#fff4e0 guifg=#fff4e0')
vim.cmd('highlight CursorLine guibg=#e8e0d5')
vim.cmd('highlight LineNr guifg=#8d91aa')
vim.cmd('highlight CursorLineNr guifg=#1b2d74')
vim.cmd('highlight SignColumn guibg=#fff4e0')
vim.cmd('highlight StatusLine gui=bold guibg=#cccde6 guifg=#1b2d74')
vim.cmd('highlight StatusLineNC gui=bold guibg=#cccde6 guifg=#747dad')
vim.cmd('highlight Directory guifg=#704900')
vim.cmd('highlight Visual guibg=#bbb8c0')
vim.cmd('highlight Search guibg=#8d91aa guifg=#1b2d74')
vim.cmd('highlight CurSearch guibg=#009e6f guifg=#fff4e0')
vim.cmd('highlight IncSearch gui=None guibg=#009e6f guifg=#fff4e0')
vim.cmd('highlight MatchParen guibg=#8d91aa guifg=#1b2d74')
vim.cmd('highlight Pmenu guibg=#ffffff guifg=#1b2d74')
vim.cmd('highlight PmenuSel guibg=#bbc0d5 guifg=#1b2d74')
vim.cmd('highlight PmenuSbar guibg=#bbc0d5 guifg=#1b2d74')
vim.cmd('highlight VertSplit guifg=#cccde6')
vim.cmd('highlight MoreMsg guifg=#1b2d74')
vim.cmd('highlight Question guifg=#1b2d74')
vim.cmd('highlight Title guifg=#972dbe')

-- Syntax highlighting
vim.cmd('highlight Comment guifg=#8d91aa gui=italic')
vim.cmd('highlight Constant guifg=#1b7472')
vim.cmd('highlight Identifier guifg=#972dbe')
vim.cmd('highlight Statement guifg=#944d1e')
vim.cmd('highlight PreProc guifg=#944d1e')
vim.cmd('highlight Type guifg=#00a870 gui=None')
vim.cmd('highlight Special guifg=#1b2d74')

-- Refined syntax highlighting
vim.cmd('highlight String guifg=#21741b')
vim.cmd('highlight Number guifg=#2089d9')
vim.cmd('highlight Boolean guifg=#1b7472')
vim.cmd('highlight Function guifg=#972dbe')
vim.cmd('highlight Keyword guifg=#944d1e gui=italic')

-- Html syntax highlighting
vim.cmd('highlight Tag guifg=#972dbe')
vim.cmd('highlight @tag.delimiter guifg=#1b2d74')
vim.cmd('highlight @tag.attribute guifg=#972dbe')

-- Messages
vim.cmd('highlight ErrorMsg guifg=#ff5024')
vim.cmd('highlight Error guifg=#ff5024')
vim.cmd('highlight DiagnosticError guifg=#ff5024')
vim.cmd('highlight DiagnosticVirtualTextError guibg=#ffe4cd guifg=#ff5024')
vim.cmd('highlight WarningMsg guifg=#d1a700')
vim.cmd('highlight DiagnosticWarn guifg=#d1a700')
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=#faecca guifg=#d1a700')
vim.cmd('highlight DiagnosticInfo guifg=#00ccff')
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=#e6f0e3 guifg=#00ccff')
vim.cmd('highlight DiagnosticHint guifg=#00bdbd')
vim.cmd('highlight DiagnosticVirtualTextHint guibg=#e6efdd guifg=#00bdbd')
vim.cmd('highlight DiagnosticOk guifg=#00bd00')

-- Common plugins
vim.cmd('highlight CopilotSuggestion guifg=#8d91aa') -- Copilot suggestion
vim.cmd('highlight TelescopeSelection guibg=#bbb8c0') -- Telescope selection
