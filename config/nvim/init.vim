let mapleader=" "

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/lightline.vim

set autoindent
set clipboard=unnamedplus
set completeopt=longest,menuone
set cursorline
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noshowmode
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set showcmd
set showtabline=2
set smartcase
set smarttab
set softtabstop=4
set splitright
set tabstop=4
set termguicolors
set title
set updatetime=500
set wildmode=longest:full,full

colorscheme ayu

map <silent> <C-j> :Ttoggle<CR>
map <silent> <leader>o :FloatermNew lf<CR>
map <silent> <C-b> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>

let g:asyncrun_open = 12
let g:asynctasks_config_name = '.tasks.ini'
let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:indentLine_char = '¦'
let g:lf_map_keys = 0
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = 1
let g:yankring_clipboard_monitor = 0
let g:yankring_history_dir = "$HOME/.cache/"

autocmd TermOpen * setlocal nonumber norelativenumber
autocmd FileType help,neoterm IndentLinesDisable
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

