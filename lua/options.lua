require "nvchad.options"

-- add yours here!

vim.opt.numberwidth = 2
vim.g.snipmate_snippets_path = "./snippets/"

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })
vim.keymap.set('n', '<C-z>', '<C-v>', { noremap = true, silent = true })
vim.keymap.set('x', 'p', '"_dP', { noremap = true, silent = true })
vim.o.shell = "C:\\Program Files\\PowerShell\\7\\pwsh.exe"
-- vim.o.shell = "nu"
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellxquote = ""

vim.opt.termguicolors = true
require('nvim-highlight-colors').setup({})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.g.matchparen_timeout = 300
vim.g.matchparen_insert_timeout = 300

vim.lsp.set_log_level("debug")
