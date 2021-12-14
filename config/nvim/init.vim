let mapleader = ' '

source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/lightline.vim
source $HOME/.config/nvim/vimspector.vim
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
set inccommand=nosplit
set incsearch
set iskeyword-=:
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
set undodir=$HOME/.cache/vim/undo
set undofile
set updatetime=500
set wildmode=longest:full,full

nmap s <Plug>(easymotion-s2)
nmap <silent> U :UndotreeToggle<CR>

map <silent> <leader>v :vsp<CR>
map <silent> <leader>s :sp<CR>
map <silent> <leader>t :Ttoggle<CR>
map <silent> <leader>o :FloatermNew lf<CR>
map <silent> <leader>n :noh<CR>

nmap <silent> <leader>l :call ToggleLocationList()<CR>
nmap <silent> <leader>q :call ToggleQuickfixList()<CR>

map <silent> <C-h> :wincmd h<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-l> :wincmd l<CR>

tnoremap <Esc> <C-\><C-n>

xmap <leader>= :Tabularize /
map <leader>= :Tabularize /

let g:EasyMotion_smartcase = 1
let g:XkbSwitchEnabled = 1
let g:asyncrun_open = 12
let g:asyncrun_rootmarks = ['.tasks.ini', '.root', 'build/', 'compile_commands.json', '.svn', '.git', '.bzr']
let g:asynctasks_config_name = '.tasks.ini'
let g:asynctasks_profile = 'debug'
let g:asynctasks_term_pos = 'bottom'
let g:colorizer_nomap = 1
let g:floaterm_height = 0.8
let g:floaterm_opener = 'edit'
let g:floaterm_width = 0.8
let g:fzf_buffers_jump = 1
let g:fzf_preview_default_fzf_options = {'--tiebreak': 'end'}
let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:gitgutter_max_signs = 30
let g:gitgutter_sign_priority = 0
let g:incsearch#auto_nohlsearch = 1
let g:lf_command_override = 'lfrun'
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean-community'
let g:miniyank_filename = $HOME."/.cache/vim/.miniyank.mpack"
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:rooter_patterns = ['.root', 'build/', 'compile_commands.json', '.svn', '.git', '.bzr']
let g:tex_flavor = 'pdflatex'
let g:tokyonight_enable_italic = 1
let g:vimtex_view_method='zathura'
let g:yankring_history_dir = '$HOME/.cache/'

colorscheme tokyonight

augroup Terminal
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd TermOpen * IndentLinesDisable
    autocmd TermEnter * setlocal scrolloff=0
    autocmd TermLeave * setlocal scrolloff=10
augroup END

augroup FileTypes
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType json let g:indentLine_enabled = 0
    autocmd FileType tex setlocal tw=80
augroup END

command! -nargs=0 Reload :source $MYVIMRC
