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
set mouse=a
set noshowmode
set notimeout
set nowrap
set number
set relativenumber
set scrolloff=10
set shiftwidth=4
set shortmess+=c
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
set undofile
set undodir=$HOME/.cache/vim/undo
set updatetime=500
set wildmode=longest:full,full

nmap s <Plug>(easymotion-s2)

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>p <Plug>(miniyank-cycle)
map <leader>n <Plug>(miniyank-cycleback)

map <silent> <leader>v :vsp<CR>
map <silent> <leader>s :sp<CR>
map <silent> <leader>t :Ttoggle<CR>
map <silent> <leader>o :FloatermNew lf<CR>
map <silent> U :UndotreeToggle<CR>

map <silent> <C-h> :wincmd h<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-l> :wincmd l<CR>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

tnoremap <Esc> <C-\><C-n>

xmap <leader>= :Tabularize /
map <leader>= :Tabularize /

let g:EasyMotion_smartcase = 1
let g:XkbSwitchEnabled = 1
let g:asyncrun_open = 12
let g:asyncrun_rootmarks = ['build/', 'compile_commands.json', '.git', '.svn', '.root']
let g:asynctasks_config_name = '.tasks.ini'
let g:asynctasks_profile = 'debug'
let g:asynctasks_term_pos = 'bottom'
let g:colorizer_nomap = 1
let g:floaterm_height = 0.8
let g:floaterm_opener = 'edit'
let g:floaterm_width = 0.8
let g:fzf_buffers_jump = 1
let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:fzf_preview_default_fzf_options = {'--tiebreak': 'end'}
let g:incsearch#auto_nohlsearch = 1
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean-community'
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:rooter_patterns = ['.root', 'build/', '.svn', '.git', '.bzr']
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:yankring_clipboard_monitor = 0
let g:yankring_history_dir = '$HOME/.cache/'

colorscheme material

augroup Terminal
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd TermEnter * setlocal scrolloff=0
    autocmd TermLeave * setlocal scrolloff=10
augroup END

command! -nargs=0 Reload :source ~/.config/nvim/init.vim
