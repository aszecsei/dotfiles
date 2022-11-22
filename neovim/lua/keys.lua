local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
map('i', 'jk', '<ESC>', default_opts)
map('t', 'jk', '<C-\\><C-n>', default_opts)

-- Toggle nvim-tree
map('n', 'n', '<cmd>NvimTreeToggle<CR>', default_opts)

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', default_opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', default_opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', default_opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', default_opts)

-- LSP
map("n", "<Leader>vd", "<cmd>lua vim.lsp.buf.definition()<CR>", default_opts)
map("n", "<Leader>vi", "<cmd>lua vim.lsp.buf.implementation()<CR>", default_opts)
map("n", "<Leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", default_opts)
map("n", "<Leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>", default_opts)
map("n", "<Leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>", default_opts)
map("n", "<Leader>vh", "<cmd>lua vim.lsp.buf.hover()<CR>", default_opts)
map("n", "<Leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>", default_opts)
map("n", "<Leader>vsd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", default_opts)
map("n", "<Leader>vn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", default_opts)
map("n", "<Leader>vp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", default_opts)
map("n", "<Leader>vf", "<cmd>Format<CR>", default_opts)