
vim.api.nvim_set_keymap('n', '<leader>n', ':SFMToggle<CR>', { silent=true,noremap = true, desc="   File Explorer"})
vim.api.nvim_set_keymap('n', '<C-l>', ':SFMToggle<CR>', { silent=true, desc="   File Explorer"})

vim.api.nvim_set_keymap('n', '<leader>lr', ':LSPRestart<CR>', { noremap = true, desc=" 󰑎  Restart LSP", silent = true})
vim.api.nvim_set_keymap('n', '<leader>x', ':bp<bar>sp<bar>bn<bar>bd<CR>', {silent= true,desc="   Close Current Buffer"})

vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.formatting() end, {desc="   Format"})
vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, {desc="   Rename"})
vim.keymap.set('n', '<leader>gd', function() vim.lsp.buf.definition() end, {desc="   Go to Definition"})
vim.keymap.set('n', '<leader>gi', function() vim.lsp.buf.implementation() end, {desc="   Go to Implementation"})
vim.keymap.set('n', '<leader>gr', function() vim.lsp.buf.references() end, {desc="   Go to References"})
vim.keymap.set('n', '<leader>gh', function() vim.lsp.buf.hover() end, {desc="   View Documentation for Node"})
vim.keymap.set('n', '<leader>ga', require("actions-preview").code_actions, {desc="    Code Action"})
