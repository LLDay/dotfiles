local cmd = vim.cmd

cmd [[
augroup Terminal
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd TermOpen * IndentLinesDisable
    autocmd TermEnter * setlocal scrolloff=0
    autocmd TermLeave * setlocal scrolloff=10
augroup END
]]

cmd [[
augroup FileTypes
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType json let g:indentLine_enabled = 0
    autocmd FileType tex setlocal tw=80
augroup END
]]

cmd [[
augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]]

cmd [[
augroup colors
    autocmd ColorScheme * highlight! link SignColumn LineNr
augroup end
]]

cmd [[
command! -nargs=0 Reload :source $MYVIMRC
]]
