local opt = vim.opt

-- Context
opt.colorcolumn = '120' -- max line length
opt.number = true -- show line numbers
opt.relativenumber = false -- show relative line numbers
opt.scrolloff = 8 -- min num lines of context
opt.signcolumn = 'yes' -- show the sign column

-- File Types
opt.encoding = 'utf8' -- string encoding
opt.fileencoding = 'utf8' -- file encoding

-- Theme
opt.syntax = 'ON' -- syntax highlighting
opt.termguicolors = true -- enable ui color

-- Search
opt.ignorecase = true -- ignore search case
opt.smartcase = true -- override ignorance if search has capitals
opt.incsearch = true -- use incremental search
opt.hlsearch = true -- highlight search matches

-- Whitespace
opt.expandtab = true -- use spaces, not tabs
opt.shiftwidth = 4 -- size of indent
opt.softtabstop = 4 -- number of spaces tabs count for in insert mode
opt.tabstop = 4 -- number of spaces tabs count for

-- Splits
opt.splitright = true -- place new window to right of current one
opt.splitbelow = true -- place new window below current one