call plug#begin()

Plug 'sjl/badwolf' " badwolf color scheme
Plug 'itchyny/lightline.vim' " lightline status bar
Plug 'taohexxx/lightline-buffer' " show buffers
Plug 'w0rp/ale' " linting
Plug 'rust-lang/rust.vim' " rust language support
Plug 'tpope/vim-sensible' " vim sensible defaults
Plug 'majutsushi/tagbar' " display file tags
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocompletion engine
Plug 'racer-rust/vim-racer' " racer autocompletion
Plug 'Shougo/neco-vim' " vim autocompletion
Plug 'ryanoasis/vim-devicons' " devicons - this needs NerdIcons installed
Plug 'mengelbrecht/lightline-bufferline' " show buffers instead of tabs
" TODO: Put these behind a flag if OCaml is installed
" Plug 'copy/deoplete-ocaml' " Autocompletion for OCaml with Merlin
" Plug 'let-def/ocp-indent-vim' " ocp-indent support

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
set showtabline=2

let mapleader="," " leader is comma
" jk is escape
inoremap jk <esc>
nmap <F8> :TagbarToggle<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:rustfmt_autosave=1 " automatically format rust code on save
let g:deoplete#enable_at_startup=1 " use deoplete
let g:deoplete#complete_method="complete"
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag'] " disable other comption sources for ocaml
let g:deoplete#auto_complete_delay =0 " no delay before completion

set encoding=utf-8 " use utf-8 encoding
let g:python3_host_prog='C:\python37\python.exe'
let g:python_host_prog='C:\python27\python.exe'

let g:lightline_buffer_enable_devicons = 1
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'separator': { 'left': '', 'right': '', },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }
let g:lightline.enable = {
      \ 'statusline': 1,
      \ 'tabline': 1,
      \ }
let g:lightline.tabline = {
      \ 'left': [ [ 'buffers' ], ],
      \ 'right': [ [ ], ],
      \ }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}
let g:lightline#bufferline#filename_modifier=':t'

" OCaml Merlin Setup
" TODO: Put this behind a flag to check if OCaml is installed
" let g:opamshare = substitute(system('opam config var share'), '\n$', '', '''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
