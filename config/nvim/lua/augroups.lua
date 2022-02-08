local cmd = vim.cmd

cmd [[
augroup Terminal
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd TermEnter * setlocal scrolloff=0
    autocmd TermLeave * setlocal scrolloff=10
augroup END
]]

cmd [[
augroup FileTypes
    autocmd!
    autocmd FileType yaml,typescript,javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType markdown,tex,txt setlocal wrap linebreak
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
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END
]]

local colors = require('config.colors')
local augroup_color = string.format([[
augroup Colors
    autocmd ColorScheme * highlight! DiagnosticLineNrError guifg=%s gui=bold
    autocmd ColorScheme * highlight! DiagnosticLineNrWarn guifg=%s gui=bold
    autocmd ColorScheme * highlight! DiagnosticLineNrInfo guifg=%s gui=bold
    autocmd ColorScheme * highlight! DiagnosticLineNrHint guifg=%s gui=bold

    sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
    sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
    sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
    sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
augroup end
]], colors.error, colors.warning, colors.info, colors.hint)
vim.cmd(augroup_color)

cmd [[
command! -nargs=0 Reload :source $MYVIMRC
]]
