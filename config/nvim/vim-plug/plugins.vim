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
Plug 'lervag/vimtex'
Plug 'airblade/vim-rooter'
Plug 'lifepillar/pgsql.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter'
Plug 'rhysd/devdocs.vim'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Look and feel
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-moonfly-colors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'kassio/neoterm'
Plug 'lilydjwg/colorizer'
Plug 'maximbaz/lightline-ale'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'simeji/winresizer'
Plug 'voldikss/vim-floaterm'

" Keybindings
Plug 'bfredl/nvim-miniyank'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'justinmk/vim-sneak'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()
