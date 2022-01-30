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
        config = function() require 'config.coc' end
    }
    use {'dense-analysis/ale', config = function() require 'config.ale' end}

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require 'config.gitsigns' end
    }

    -- Programming
    use 'airblade/vim-rooter'
    use 'kassio/neoterm'
    use 'lifepillar/pgsql.vim'
    use 'preservim/nerdcommenter'
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
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function() require 'config.telescope' end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require 'config.indent_blankline' end
    }
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require'colorizer'.setup() end,
        cmd = {'ColorizerToggle'}
    }
    use {
        'rebelot/kanagawa.nvim',
        config = function() require 'config.theme' end
    }
    use {
        'nvim-lualine/lualine.nvim',
        config = function() require 'config.lualine' end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
        requires = {{'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle'}},
        run = ":TSUpdate",
        config = function() require('config.treesitter') end
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
