require('nvim-tree').setup{}
require('lualine').setup{}

require('mason').setup{}
require('mason-lspconfig').setup{
    ensure_installed = { "sumneko_lua", "rust_analyzer" }
}
-- Additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
local servers = { 'rust_analyzer', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup{
        capabilities = capabilities,
    }
end

require('plugins/cmp')

require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'cpp', 'json', 'lua', 'python', 'rust', 'toml' },
    highlight = {
        enable = true,
    }
}

-- THEME
require('catppuccin').setup{
    flavour = 'frappe',
}
vim.cmd.colorscheme "catppuccin"