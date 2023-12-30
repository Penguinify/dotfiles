local telescope = require('telescope')
local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "   Find Files"})
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { desc = "   Search for String"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "   Find Buffers"})
vim.keymap.set('n', '<leader>ft', builtin.help_tags, {desc = "   Treesitter"})
