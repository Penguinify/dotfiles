require("lazy").setup(
    {
        {
            dependencies = {
                {
                    "nvim-telescope/telescope.nvim",
                    branch = "0.1.x",
                    dependencies = {"nvim-lua/plenary.nvim", "BurntSushi/ripgrep"}
                }
            },
            "folke/which-key.nvim",
            event = "VeryLazy",
            init = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
            end,
            opts = {}
        },
        {
            "williamboman/mason.nvim",
            lazy = true
        },
        {
            "williamboman/mason-lspconfig.nvim",
            lazy = true
        },
        {
            "neovim/nvim-lspconfig",
            lazy = true
        },
        {
            "mfussenegger/nvim-lint",
            lazy = true
        },
        {
            "mhartington/formatter.nvim",
            lazy = true
        },
        {
            "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
            lazy = true
        },
        {
            "folke/lsp-colors.nvim",
            lazy = true
        },
        { "catppuccin/nvim", name = "catppuccin"},
        {
            "nvim-lualine/lualine.nvim",
            requires = {"nvim-tree/nvim-web-devicons", opt = true},
            lazy = true
        },
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            lazy = true
        },
        {
            "folke/noice.nvim",
            event = "VeryLazy",
            opts = {},
            dependencies = {
                -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
                "MunifTanjim/nui.nvim"
            }
        },
        {
            "goolord/alpha-nvim",
            dependencies = {"nvim-tree/nvim-web-devicons"},
            config = function()
                require "alpha".setup(require "alpha.themes.startify".config)
            end,
        },
        {
            "Pocco81/AutoSave.nvim",
        },
        {
            "github/copilot.vim",
            lazy = false,
        },
        {"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"},
    {
        "tpope/vim-surround",
        lazy = false -- Surround stuff with the ys-, cs-, ds- commands
    },
    {
        "numToStr/Comment.nvim",
        opts = {
            toggler = {
                ---Line-comment toggle keymap
                line = "<leader>c"
                ---Block-comment toggle keymap
            }
        },
        lazy = true
    },
    {
        "aznhe21/actions-preview.nvim",
        lazy = true
    },
    {
        'dinhhuy258/sfm.nvim',
        lazy = true
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        lazy = true
    },
    {
        "hrsh7th/cmp-buffer",
        lazy = true
    },
    {
        "hrsh7th/cmp-path",
        lazy = true
    },
    {
        "hrsh7th/cmp-cmdline",
        lazy = true
    },
    {
        "hrsh7th/nvim-cmp",
        lazy = true
    },
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",
        dependencies = {"rafamadriz/friendly-snippets"},
        lazy = true
    },
    {
        "saadparwaiz1/cmp_luasnip",
    },
    {
        "onsails/lspkind.nvim",
        lazy = true
    },
    {
        "ray-x/cmp-treesitter",
        lazy = true
    },
    {
        "FelipeLema/cmp-async-path",
        lazy = true
    },
    {
        "numToStr/FTerm.nvim",
        lazy = true
    },
    {
        "simrat39/rust-tools.nvim"
    }
})
