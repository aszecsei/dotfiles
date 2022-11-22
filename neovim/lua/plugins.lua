local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Git commands in nvim
    use 'tpope/vim-fugitive'

    -- Fugitive companion to interact with github
    use 'tpope/vim-rhubarb'

    -- Highlight, edit, and navigate code
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function ()
            local to_update = require('nvim-treesitter.install').update({ with_sync = true })
            to_update()
        end,
    }

    -- Additional textobjects for treesitter
    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = { 'nvim-treesitter' }
    }

    -- LSP
    use {
        -- Package manager for LSP servers, DAP servers, linters, and formatters
        'williamboman/mason.nvim',
        -- Bridges mason with lspconfig
        'williamboman/mason-lspconfig.nvim',
        -- Quickstart configurations for the LSP client
        'neovim/nvim-lspconfig',
    }
    -- Autocomplete
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        },
    }
    -- LSP icons
    use 'onsails/lspkind.nvim'

    -- Fuzzy-finding
    use 'nvim-lua/popup.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'jremmen/vim-ripgrep'

    -- Fancy status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- File Browsing
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Start screen
    use 'mhinz/vim-startify'

    -- Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
end)