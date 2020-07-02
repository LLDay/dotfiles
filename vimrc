set nocompatible
filetype off

set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'The-NERD-Commenter'
Plugin 'christoomey/vim-system-copy'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'preservim/nerdtree'
call vundle#end()
filetype plugin indent on

let mapleader=" "

set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
set showcmd
set clipboard=unnamed
filetype indent on

nnoremap B ^
nnoremap E $
map <C-o> :NERDTreeToggle<CR>

set hlsearch
set ignorecase
set incsearch
set smartcase
set showcmd
set clipboard=unnamedplus,unnamed

syntax enable
set number
set relativenumber
set title
set laststatus=2
let g:lightline = {'colorscheme': 'jellybeans' }
let g:multi_cursor_select_all_word_key = '<C-L>'
