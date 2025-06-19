-- vim:foldmethod=marker foldlevel=0

-- Files {{{1
vim.o.swapfile = false

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*",
    callback = function() vim.o.ffs="unix,dos" end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.c", "*.h"},
    callback = function() vim.o.syntax="c" end
})

vim.g.c_syntax_for_h=1

-- Text editing {{{1
vim.o.encoding="utf-8"
vim.o.ff="unix"
vim.o.makeencoding="utf-8"
vim.o.ffs="unix,dos"
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.smarttab = false
vim.o.shiftwidth=4
vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.number = true
vim.o.hlsearch = true
vim.o.bs="indent,eol,start,nostop"

-- Interface {{{1
vim.cmd.colorscheme("sorbet")

vim.o.cp = false
vim.o.timeout = false
vim.o.shortmess = vim.o.shortmess .. "I"
vim.o.foldmethod="manual"
vim.o.laststatus=2
vim.o.cursorline = true

vim.g.netrw_keepdir=0

-- Sessions {{{1
vim.o.ssop="folds,globals,localoptions,resize,sesdir,slash,tabpages,terminal,unix"
 
-- Plugins & Additional configuration files {{{1

-- Key Bindings {{{1
-- Navigation {{{2
vim.keymap.set('n', '<TAB>', '<Cmd>tabnext<CR>', { silent = true })
vim.keymap.set('n', '<S-TAB>', '<Cmd>tabprevCR>', { silent = true })
vim.keymap.set('n', '<Leader>t', '<Cmd>tabnew<CR>', { silent = true })

-- Panes {{{2
vim.keymap.set('n', '<F2>', '<Cmd>Explore<CR>', { silent = true })
vim.keymap.set('n', '<Leader>b', '<Cmd>buffers<CR>', { silent = true })
vim.keymap.set('n', '<Leader>k', '<Cmd>terminal<CR>', { silent = true })

-- IDE {{{2
-- vim.keymap.set('n', '<Leader>e', '<Cmd>CocDiagnostics<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>o', '<Cmd>CocOutline<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>i', '<Cmd>call CocActionAsync('definitionHover')<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>d', '<Cmd>call CocActionAsync('jumpDefinition')<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader><S-d>', '<Cmd>call CocActionAsync('jumpDefinition', 'split')<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader><F2>', '<Cmd>call CocActionAsync('refactor')<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>a', '<Cmd>call CocActionAsync('codeAction', 'cursor')<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader><F12>', '<Cmd>call CocActionAsync('references')<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader><Space>', '<Cmd>call CocActionAsync('showSignatureHelp')<CR>', { silent = true })
