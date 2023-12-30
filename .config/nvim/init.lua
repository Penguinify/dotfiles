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
require("catppuccin").setup(
{    color_overrides = {
        all = {
            mantle = "#1e1e2e",
        },
    }
}
)
require("configs.bufferline")
require("luasnip.loaders.from_vscode").lazy_load()
require("configs.sfm")
require("configs.treesitter")
require("configs.fterm")
require("actions-preview").setup {}
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>o", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

vim.cmd.colorscheme "catppuccin"

