return {
    -- Git commands in nvim
    'tpope/vim-fugitive',

    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
    },

    -- Fugitive companion to interact with github
    'tpope/vim-rhubarb',

    -- Highlight, edit, and navigate code
    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = {
                "vim",
                "html",
                "css",
                "javascript",
                "json",
                "toml",
                "markdown",
                "c",
                "cpp",
                "bash",
                "lua",
                "tsx",
                "typescript",
                "go",
                "rust",
                "python",
            },
            highlight = {
                enable = true,
            },
        },
    },

    -- Additional textobjects for treesitter
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        dependencies = { 'nvim-treesitter' },
    },

    -- LSP
    -- Package manager for LSP servers, DAP servers, linters, and formatters
    'williamboman/mason.nvim',
    -- Bridges mason with lspconfig
    'williamboman/mason-lspconfig.nvim',
    -- Quickstart configurations for the LSP client
    'neovim/nvim-lspconfig',

    -- Autocomplete
    {
        'hrsh7th/nvim-cmp',
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        },
    },

    -- LSP icons
    'onsails/lspkind.nvim',

    -- Fuzzy-finding
    'nvim-lua/popup.nvim',
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    'jremmen/vim-ripgrep',

    -- Fancy status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons', opt = true},
    },

    -- File Browsing
    {
        'kyazdani42/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Tab line
    'nvim-tree/nvim-web-devicons',
    {
        'romgrk/barbar.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Start screen
    'mhinz/vim-startify',

    -- LaTeX
    'lervag/vimtex',

    -- Theme
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({ flavour = 'frappe' })
            -- load the colorscheme here
            vim.cmd.colorscheme 'catppuccin'
        end,
    },

    -- Error reporting
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
}
