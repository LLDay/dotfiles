local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

local packer_bootstrap = false
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

vim.cmd [[packadd packer.nvim]]
local packer = require('packer')
return packer.startup(function()
    use 'wbthomason/packer.nvim'

    -- Linters & LSP
    use {
        'neoclide/coc.nvim',
        branch = 'release',
        config = function() require 'plugins.coc' end
    }
    use {'dense-analysis/ale', config = function() require 'plugins.ale' end}

    -- Git
    -- use 'airblade/vim-gitgutter'
    -- use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require 'plugins.gitsigns' end
    }

    -- Programming
    use 'airblade/vim-rooter'
    use 'kassio/neoterm'
    use 'lifepillar/pgsql.vim'
    use 'preservim/nerdcommenter'
    use 'puremourning/vimspector'
    use {'skywind3000/asynctasks.vim', requires = {'skywind3000/asyncrun.vim'}}
    -- Snippets
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    -- Look and feel
    use 'adelarsq/vim-matchit'
    use 'bfrg/vim-cpp-modern'
    use 'bluz71/vim-moonfly-colors'
    use 'bronson/vim-trailing-whitespace'
    use 'cespare/vim-toml'
    use 'fidian/hexmode'
    use 'itchyny/vim-gitbranch'
    use 'lyokha/vim-xkbswitch'
    use 'mbbill/undotree'
    use 'rafi/awesome-vim-colorschemes'
    use 'ryanoasis/vim-devicons'
    use 'simeji/winresizer'
    use 'tiagovla/tokyodark.nvim'
    use 'unblevable/quick-scope'
    use 'voldikss/vim-floaterm'

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require 'plugins.indent_blankline' end
    }
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require'colorizer'.setup() end,
        cmd = {'ColorizerToggle'}
    }
    use {
        'rebelot/kanagawa.nvim',
        config = function() require 'plugins.theme' end
    }
    use {
        'nvim-lualine/lualine.nvim',
        config = function() require 'plugins.lualine' end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {{'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle'}},
        run = ":TSUpdate",
        config = function() require('plugins.treesitter') end
    }

    -- Keybindings
    use 'godlygeek/tabular'
    use 'liuchengxu/vim-which-key'
    use 'milkypostman/vim-togglelist'
    use 'tommcdo/vim-exchange'
    use 'tpope/vim-repeat'
    use 'tpope/vim-speeddating'
    use 'tpope/vim-surround'
    use 'tpope/vim-unimpaired'
    use 'wellle/targets.vim'

    if packer_bootstrap then packer.sync() end
end)
