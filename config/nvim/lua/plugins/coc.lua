local g = vim.g
local cmd = vim.cmd

g.coc_global_extensions = {
    'coc-actions', 'coc-clangd', 'coc-cmake', 'coc-cspell-dicts', 'coc-css',
    'coc-fzf-preview', 'coc-json', 'coc-lua', 'coc-marketplace', 'coc-python',
    'coc-rust-analyzer', 'coc-sh', 'coc-snippets', 'coc-spell-checker',
    'coc-sql', 'coc-sqlfluff', 'coc-sumneko-lua', 'coc-tasks', 'coc-toml',
    'coc-tsserver', 'coc-ultisnips', 'coc-vimlsp', 'coc-xml', 'coc-yaml',
    'coc-yank'
}

cmd [[
augroup Common
    autocmd CursorHold * silent call CocActionAsync('highlight')
    autocmd InsertEnter * silent call CocActionAsync('showSignatureHelp')
augroup END
]]
