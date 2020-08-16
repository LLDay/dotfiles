source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/coc.vim

let mapleader=" "
set updatetime=500
set autoindent
set clipboard=unnamedplus
set completeopt=longest,menuone
set termguicolors
set cursorline
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set showcmd
set smartcase
set smarttab
set softtabstop=4
set splitright
set tabstop=4
set title
set wildmode=longest:full,full

colorscheme ayu

map <silent> <C-j> :Ttoggle<CR>
nmap <silent> <leader>fr :Rg!<CR>
tnoremap <Esc> <C-\><C-n>

let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:indentLine_char = '¦'
let g:lightline = {'colorscheme': 'jellybeans' }
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:neoterm_autoinsert = 1
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:asyncrun_open = 12
let g:asynctasks_config_name = '.tasks.ini'

autocmd TermOpen * setlocal nonumber norelativenumber
autocmd FileType help,neoterm IndentLinesDisable

