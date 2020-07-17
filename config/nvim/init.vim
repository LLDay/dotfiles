source $HOME/.config/nvim/vim-plug/plugins.vim

let mapleader=" "

set autoindent
set expandtab
set shiftwidth=4
set scrolloff=4
set smarttab
set tabstop=4
set showcmd
set clipboard=unnamed
set encoding=utf-8

map <C-o> :NERDTreeToggle<CR>

set hlsearch
set ignorecase
set incsearch
set smartcase
set showcmd
set clipboard=unnamedplus
set completeopt=longest,menuone

set number
set relativenumber
set title
set laststatus=2

let g:lightline = {'colorscheme': 'jellybeans' }
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:rainbow_active = 1
let g:indentLine_char = '¦'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
