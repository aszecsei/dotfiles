call plug#begin()

Plug 'sjl/badwolf' " badwolf color scheme
Plug 'itchyny/lightline.vim' " lightline status bar
Plug 'w0rp/ale' " linting
Plug 'rust-lang/rust.vim' " rust language support
Plug 'tpope/vim-sensible' " vim sensible defaults
Plug 'majutsushi/tagbar' " display file tags
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocompletion engine
Plug 'racer-rust/vim-racer' " racer autocompletion
Plug 'Shougo/neco-vim' " vim autocompletion

call plug#end()

colorscheme badwolf " a dope color scheme
syntax enable " enable syntax processing
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set number " show line numbers
set cursorline " highlight current line
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set hidden " prevent buffers from being unloaded when abandoned

let mapleader="," " leader is comma
" jk is escape
inoremap jk <esc>
nmap <F8> :TagbarToggle<CR>

let g:rustfmt_autosave=1 " automatically format rust code on save
let g:deoplete#enable_at_startup=1 " use deoplete

set encoding=utf-8 " use utf-8 encoding
let g:python3_host_prog='C:\python37\python.exe'
let g:python_host_prog='C:\python27\python.exe'
