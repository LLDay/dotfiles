noremap <space> <nop>
let mapleader = ' '

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/lightline.vim
source $HOME/.config/nvim/vim-plug/plugins.vim

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
set linebreak
set matchpairs+=<:>
set noshowmode
set notimeout
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set showcmd
set showtabline=2
set signcolumn=auto:3
set smartcase
set smarttab
set softtabstop=4
set splitright
set tabstop=4
set termguicolors
set title
set updatetime=500
set wildmode=longest:full,full

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>p <Plug>(miniyank-cycle)
map <leader>n <Plug>(miniyank-cycleback)

map <silent> <C-j> :Ttoggle<CR>
map <silent> <leader>o :FloatermNew lf<CR>
map <silent> <C-b> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>

xmap <leader>= :Tabularize /
map <leader>= :Tabularize /

let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinPos = 'right'
let g:asyncrun_open = 12
let g:asynctasks_config_name = '.tasks.ini'
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8
let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:gitgutter_sign_priority = 0
let g:indentLine_char = '¦'
let g:lf_map_keys = 0
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean-community'
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:yankring_clipboard_monitor = 0
let g:yankring_history_dir = '$HOME/.cache/'

colorscheme material

augroup Common
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd FileType help,neoterm IndentLinesDisable
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

