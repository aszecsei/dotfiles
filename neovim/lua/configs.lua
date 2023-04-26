require('nvim-tree').setup{}
require('lualine').setup{}

local lsp_servers = { 'clangd', 'gopls', 'rust_analyzer', 'lua_ls' }

require('mason').setup{}
require('mason-lspconfig').setup{
    ensure_installed = lsp_servers
}

-- Additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
for _, lsp in ipairs(lsp_servers) do
    lspconfig[lsp].setup{
        capabilities = capabilities,
    }
end

require('plugins/cmp')

-- vimtex
vim.g.vimtex_view_method = 'zathura'

-- barbar
local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_api.set_offset(0)
end)

-- Diagnostics
vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})
