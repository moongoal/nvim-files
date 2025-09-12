-- vim:foldmethod=marker foldlevel=0

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Files {{{1
vim.cmd("filetype indent off")

vim.opt.swapfile = false

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*",
    callback = function() vim.opt_local.ffs="unix,dos" end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.c", "*.h", "*.cpp", "*.hpp"},
    callback = function()
        vim.opt_local.syntax="c"
        -- vim.opt_local.equalprg = "clang-format"
    end
})

-- vim.api.nvim_create_autocmd({"BufWritePre"}, {
--     pattern = { "*.c", "*.h", "*.cpp", "*.hpp" },
--     callback = function()
--         vim.api.nvim_command("ClangFormatBuffer")
--     end
-- })

vim.g.c_syntax_for_h=1

-- Text editing {{{1
vim.opt.encoding="utf-8"
vim.opt.ff="unix"
vim.opt.makeencoding="utf-8"
vim.opt.ffs="unix,dos"
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.smartindent = false
vim.opt.cindent = false
vim.opt.smarttab = false
vim.opt.shiftwidth=2
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.number = true
vim.opt.hlsearch = true
vim.opt.bs="indent,eol,start,nostop"
vim.opt.completeopt="menu,popup,preview,longest"

-- Interface {{{1
vim.opt.cp = false
vim.opt.timeout = false
vim.o.shortmess = vim.o.shortmess .. "I"
vim.opt.foldmethod="manual"
vim.opt.laststatus=2
vim.opt.cursorline = true

vim.g.netrw_keepdir=0

if vim.fn.has("gui_running") then
    vim.opt.mousehide = true
    vim.opt.guifont="FiraCode Nerd Font:h16"
    vim.opt.guicursor="a:block-blinkon1000-blinkoff0,i:block-blinkon500-blinkoff500"
end

-- Sessions {{{1
vim.opt.ssop="folds,globals,localoptions,resize,sesdir,slash,tabpages,terminal,unix"

-- Plugins {{{1
require("config.lazy")
require("config.statusline")
require("config.lsp")
require("config.fontsize")
-- require("config.clang-format")

-- Key Bindings {{{1
-- Navigation {{{2
vim.keymap.set('n', '<TAB>', '<Cmd>tabnext<CR>', { silent = true })
vim.keymap.set('n', '<S-TAB>', '<Cmd>tabprev<CR>', { silent = true })
vim.keymap.set('n', '<Leader>t', '<Cmd>tabnew<CR>', { silent = true })
vim.keymap.set('n', '<F2>', '<Cmd>Neotree filesystem toggle left<CR>', {})
vim.keymap.set('n', '<Leader><F2>', '<Cmd>Neotree reveal<CR>', {})

-- Panes {{{2
vim.keymap.set('n', '<Leader>b', '<Cmd>buffers<CR>', { silent = true })
vim.keymap.set('n', '<Leader>k', '<Cmd>terminal<CR>', { silent = true })

-- Editing {{{2
vim.keymap.set('n', '<Leader>=', '<Cmd>IncreaseFontSize<CR>', { silent = true })
vim.keymap.set('n', '<Leader>-', '<Cmd>DecreaseFontSize<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>cf', '<Cmd>ClangFormatBuffer<CR>', {})

-- IDE {{{2
local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>i', vim.lsp.buf.hover, { desc = "Display symbol information" })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "Goto definition/declaration" })
vim.keymap.set('n', '<leader>u', vim.lsp.buf.references, { desc = "Display references" })
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = "Display code actions" })
vim.keymap.set('i', '<C-n>', vim.lsp.buf.signature_help, { desc = "Display signature help" })
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, { desc = "Display diagnostics" })
vim.keymap.set('n', '<leader>dn', function () vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Go to the next diagnostic location" })
vim.keymap.set('n', '<leader>dp', function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Go to the next diagnostic location" })

-- Post-plugin-load commands {{{1
vim.cmd.colorscheme("tokyonight-moon")

