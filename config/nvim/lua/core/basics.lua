vim.g.mapleader = ' '
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 4
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.o.wrap = false
vim.o.clipboard = 'unnamed'

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

--Line numbers
vim.wo.number = true
vim.g.nord_italic = true
