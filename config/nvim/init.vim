source $HOME/.config/nvim/vim-plug/plugins.vim
let mapleader=" "

set autoindent
set clipboard=unnamed
set clipboard=unnamedplus
set completeopt=longest,menuone
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set showcmd
set showcmd
set smartcase
set smarttab
set softtabstop=4
set splitright
set tabstop=4
set title
set wildmode=longest:full,full

map <silent> <M-o> :TagbarToggle<CR>
map <silent> <C-b> :CocCommand explorer --position right<CR>

inoremap <silent><expr> <c-space> coc#refresh()

nmap <F2> <Plug>(coc-rename)
nmap <leader> gq  <Plug>(coc-format-selected)
nmap <silent> <C-j> <Plug>(coc-terminal-toggle)
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)

nmap <silent> <leader>fr :Rg!<CR>
nmap <silent> <leader>fo :Files!<CR>

xmap <leader> gq  <Plug>(coc-format-selected)

tnoremap <Esc> <C-\><C-n>

let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:indentLine_char = '¦'
let g:lightline = {'colorscheme': 'jellybeans' }
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:rainbow_active = 1
let g:tmuxline_powerline_separators = 0

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd TermOpen * setlocal nonumber norelativenumber
autocmd FileType help,coc-explorer IndentLinesDisable

command! -nargs=0 Format :call CocAction('format')
