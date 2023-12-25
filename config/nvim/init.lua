local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



require("core.basics")
require("core.plugins")
require("mason").setup()
require("lspconfig").tsserver.setup {}
require("lspconfig").pylsp.setup {}
require'lspconfig'.tailwindcss.setup{}
require("configs.mason-lsp")
require("lsp_lines").setup()
require("configs.lsp-colors")
require("configs.lualine")
require("configs.telescope")
require("core.mapping")
require("configs.cmp")
require('Comment').setup()
require('configs.copilot')
vim.opt.termguicolors = true
require("configs.bufferline")
require("luasnip.loaders.from_vscode").lazy_load()
require("configs.sfm")
require("configs.treesitter")
require("configs.fterm")
require("actions-preview").setup {}
