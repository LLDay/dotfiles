require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c', 'cpp', 'json', 'toml', 'typescript', 'cmake', 'vim', 'yaml',
        'markdown', 'dockerfile', 'rust', 'python', 'lua', 'bash'
    },
    sync_install = false,
    highlight = {enable = true, additional_vim_regex_highlighting = false}
}
