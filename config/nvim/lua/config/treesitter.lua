require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "cpp",
        "json",
        "toml",
        "typescript",
        "cmake",
        "vim",
        "yaml",
        "markdown",
        "dockerfile",
        "rust",
        "python",
        "lua",
        "bash",
        "go",
    },
    sync_install = false,
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    textobjects = {
        swap = {
            enable = true,
            swap_next = { ["]f"] = "@function.outer" },
            swap_previous = { ["[f"] = "@function.outer" },
        },
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },
    },
})
