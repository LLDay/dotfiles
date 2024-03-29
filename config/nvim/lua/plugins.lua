local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap = false
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end

vim.cmd([[packadd packer.nvim]])
local packer = require("packer")
return packer.startup(function()
    use("wbthomason/packer.nvim")

    -- Completion
    use({
        "hrsh7th/nvim-cmp",
        config = function()
            require("config.cmp")
        end,
        requires = {
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-calc" },
            { "hrsh7th/cmp-nvim-lsp-signature-help" },
            { "Saecki/crates.nvim" },
        },
    })

    -- Linters & LSP
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("config.null-ls")
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    use({
        "neovim/nvim-lspconfig",
        requires = { { "williamboman/mason.nvim" }, { "williamboman/mason-lspconfig.nvim" } },
        config = function()
            require("config.lsp")
        end,
    })

    -- Git
    use("tpope/vim-fugitive")
    use({
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("config.gitsigns")
        end,
    })
    use({
        "akinsho/git-conflict.nvim",
        config = function()
            require("git-conflict").setup()
        end,
    })

    -- Programming
    use("fidian/hexmode")

    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })

    use({
        "Darazaki/indent-o-matic",
        event = "BufEnter",
        config = function()
            require("config.indent-o-matic")
        end,
    })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    use({
        "airblade/vim-rooter",
        setup = function()
            vim.g.rooter_patterns = {
                ".root",
                "build/",
                "compile_commands.json",
                ".svn",
                ".git",
                ".bzr",
            }
        end,
    })

    use({
        "akinsho/toggleterm.nvim",
        config = function()
            require("config.toggleterm")
        end,
    })

    -- Snippets
    use({
        "l3mon4d3/luasnip",
        requires = {
            { "saadparwaiz1/cmp_luasnip" },
            { "rafamadriz/friendly-snippets" },
        },
        config = function()
            require("config.luasnip")
        end,
    })

    -- Look and feel
    use("lewis6991/impatient.nvim")
    use("adelarsq/vim-matchit")
    use("mbbill/undotree")
    use("ryanoasis/vim-devicons")
    use("simeji/winresizer")
    use("onsails/lspkind.nvim")

    use({
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
        event = "InsertCharPre",
    })

    use({
        "rebelot/heirline.nvim",
        config = function()
            require("config.heirline")
        end,
    })

    use({
        "unblevable/quick-scope",
        setup = function()
            vim.g.qs_highlight_on_keys = { "f", "F", "t", "T" }
        end,
    })
    use({
        "lyokha/vim-xkbswitch",
        setup = function()
            vim.g.XkbSwitchEnabled = 1
        end,
    })
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" }, { "nvim-telescope/telescope-ui-select.nvim" } },
        config = function()
            require("config.telescope")
        end,
    })
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("config.indent_blankline")
        end,
    })
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
        cmd = { "ColorizerToggle" },
    })
    use({ "rebelot/kanagawa.nvim", config = "vim.cmd [[colorscheme kanagawa]]" })
    use({
        "nvim-lualine/lualine.nvim",
        config = function()
            require("config.lualine")
        end,
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        requires = {
            { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
            { "nvim-treesitter/nvim-treesitter-textobjects" },
        },
        run = ":TSUpdate",
        config = function()
            require("config.treesitter")
        end,
    })
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("config.trouble")
        end,
    })

    -- Keybindings
    use("godlygeek/tabular")
    use("liuchengxu/vim-which-key")
    use("milkypostman/vim-togglelist")
    use("tpope/vim-repeat")
    use("tpope/vim-speeddating")
    use("tpope/vim-surround")
    use("wellle/targets.vim")

    if packer_bootstrap then
        packer.sync()
    end
end)
