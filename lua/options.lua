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

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
