call plug#begin('~/.config/nvim/autoload/plugged')

" Linters & Lsp
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim'
Plug 'metakirby5/codi.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-fugitive'

" Programming
Plug 'airblade/vim-rooter'
Plug 'lifepillar/pgsql.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter'

"Plug 'puremourning/vimspector'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'

" Look and feel
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'kassio/neoterm'
Plug 'lilydjwg/colorizer'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'simeji/winresizer'
Plug 'voldikss/vim-floaterm'
Plug 'bluz71/vim-moonfly-colors'

" Keybindings
Plug 'bfredl/nvim-miniyank'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()
