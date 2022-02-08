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

    -- Completion
    use {
        'hrsh7th/nvim-cmp',
        config = function() require 'config.cmp' end,
        requires = {
            {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-cmdline'}, {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-calc'}, {'Saecki/crates.nvim'}
        }
    }

    -- Linters & LSP
    use {
        'jose-elias-alvarez/null-ls.nvim',
        config = function() require 'config.null-ls' end,
        requires = {"nvim-lua/plenary.nvim"}
    }
    use {
        'neovim/nvim-lspconfig',
        requires = {{'williamboman/nvim-lsp-installer'}},
        config = function() require 'config.lsp' end
    }

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require 'config.gitsigns' end
    }

    -- Programming
    use 'airblade/vim-rooter'
    use 'fidian/hexmode'
    use 'kassio/neoterm'
    use {
        'terrortylor/nvim-comment',
        config = function()
            require('nvim_comment').setup({
                line_mapping = "<leader>cc",
                operator_mapping = "<leader>c"
            })
        end
    }

    -- Snippets
    use {'l3mon4d3/luasnip', requires = {{'saadparwaiz1/cmp_luasnip'}}}

    -- Look and feel
    use 'adelarsq/vim-matchit'
    use 'bfrg/vim-cpp-modern'
    use 'bluz71/vim-moonfly-colors'
    use 'bronson/vim-trailing-whitespace'
    use 'cespare/vim-toml'
    use 'itchyny/vim-gitbranch'
    use 'mbbill/undotree'
    use 'rafi/awesome-vim-colorschemes'
    use 'ryanoasis/vim-devicons'
    use 'simeji/winresizer'
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
        requires = {
            {'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle'},
            {'nvim-treesitter/nvim-treesitter-textobjects'}
        },
        run = ":TSUpdate",
        config = function() require 'config.treesitter' end
    }
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require 'config.trouble' end
    }

    -- Keybindings
    use 'godlygeek/tabular'
    use 'liuchengxu/vim-which-key'
    use 'milkypostman/vim-togglelist'
    use 'tommcdo/vim-exchange'
    use 'tpope/vim-repeat'
    use 'tpope/vim-speeddating'
    use 'tpope/vim-surround'
    use 'wellle/targets.vim'

    if packer_bootstrap then packer.sync() end
end)
