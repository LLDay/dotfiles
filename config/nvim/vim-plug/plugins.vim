call plug#begin('~/.config/nvim/autoload/plugged')

" Linters & Lsp
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'metakirby5/codi.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-fugitive'

" Programming
Plug 'airblade/vim-rooter'
Plug 'itchyny/vim-gitbranch'
Plug 'lervag/vimtex'
Plug 'lifepillar/pgsql.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pprovost/vim-ps1'
Plug 'preservim/nerdcommenter'
Plug 'rhysd/devdocs.vim'
Plug 'rodjek/vim-puppet'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'tpope/vim-rails'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Look and feel
Plug 'adelarsq/vim-matchit'
Plug 'bfrg/vim-cpp-modern'
Plug 'bluz71/vim-moonfly-colors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'kassio/neoterm'
Plug 'lyokha/vim-xkbswitch'
Plug 'maximbaz/lightline-ale'
Plug 'mbbill/undotree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'simeji/winresizer'
Plug 'unblevable/quick-scope'
Plug 'voldikss/vim-floaterm'
Plug 'yggdroot/indentline'

" Keybindings
Plug 'bfredl/nvim-miniyank'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'liuchengxu/vim-which-key'
Plug 'milkypostman/vim-togglelist'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()
