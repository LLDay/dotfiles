let mapleader = ' '

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/git.vim
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
set matchpairs+=<:>
set nohlsearch
set noshowmode
set notimeout
set nowrap
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set showcmd
set showtabline=1
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

nmap s <Plug>(easymotion-s2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>p <Plug>(miniyank-cycle)
map <leader>n <Plug>(miniyank-cycleback)

map <silent> <leader>v :vsp<CR>
map <silent> <leader>s :sp<CR>
map <silent> <leader>t :Ttoggle<CR>
map <silent> <leader>o :FloatermNew lf<CR>
map <silent> <C-b> :NERDTreeToggle<CR>

map <silent> <C-h> :wincmd h<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-l> :wincmd l<CR>

tnoremap <Esc> <C-\><C-n>

xmap <leader>= :Tabularize /
map <leader>= :Tabularize /

"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:asyncrun_rootmarks = ['build/', 'compile_commands.json', '.git', '.svn', '.root']
let g:EasyMotion_smartcase = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinPos = 'right'
let g:XkbSwitchEnabled = 1
let g:asyncrun_open = 12
let g:asynctasks_config_name = '.tasks.ini'
let g:asynctasks_profile = 'debug'
let g:asynctasks_term_pos = 'bottom'
let g:colorizer_nomap = 1
let g:devdocs_open_cmd = 'devdocs-desktop'
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8
let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:gruvbox_contrast_dark = 'hard'
let g:indentLine_char = '¦'
let g:lf_map_keys = 0
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean-community'
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:rooter_patterns = ['.root', 'build/', '.svn', '.git', '.bzr']
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:yankring_clipboard_monitor = 0
let g:yankring_history_dir = '$HOME/.cache/'

colorscheme material

augroup Common
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

augroup plugin-devdocs
  autocmd!
  autocmd FileType c,cpp,python,cmake nmap <buffer><leader>K <Plug>(devdocs-under-cursor)
augroup END
