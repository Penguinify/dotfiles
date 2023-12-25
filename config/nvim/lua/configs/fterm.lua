require'FTerm'.setup({
    border = 'rounded',
    dimensions  = {
        height = 0.7,
        width = 0.5,
    },
})

-- Example keybindings
vim.keymap.set('n', '<C-p>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-p>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
