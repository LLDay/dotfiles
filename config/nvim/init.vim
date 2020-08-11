source $HOME/.config/nvim/vim-plug/plugins.vim

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

map <silent> <C-b> :CocCommand explorer --position right<CR>
map <silent> <C-j> :Ttoggle<CR>

nmap <F2> <Plug>(coc-rename)
nmap <silent> <F7> <Plug>(coc-diagnostic-prev)
nmap <silent> <F8> <Plug>(coc-diagnostic-next)
nmap <leader> gq <Plug>(coc-format-selected)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gs :CocCommand clangd.switchSourceHeader<CR>
nmap <silent> go :CocList outline<CR>
nmap <silent> <leader>fr :Rg!<CR>
nmap <silent> <leader>fs :CocList symbols<CR>
nmap <silent> <leader>o :Files!<CR>

tnoremap <Esc> <C-\><C-n>
inoremap <silent><expr> <c-space> coc#refresh()

let g:fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
let g:indentLine_char = '¦'
let g:lightline = {'colorscheme': 'jellybeans' }
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 12
let g:neoterm_autoinsert = 1

autocmd TermOpen * setlocal nonumber norelativenumber
autocmd FileType help,neoterm IndentLinesDisable
autocmd CursorHold * call CocActionAsync('doHover')
autocmd InsertEnter * silent call CocActionAsync('showSignatureHelp')

command! -nargs=0 Format :call CocAction('format')

