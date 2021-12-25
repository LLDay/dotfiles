local cmd = vim.cmd
cmd [[colorscheme kanagawa]]

local colors = require('plugins.colors')

cmd(string.format([[
augroup colors
    autocmd ColorScheme * highlight! CursorLineNr guifg=%s gui=bold
    autocmd ColorScheme * highlight! MatchParen guifg=%s gui=bold
augroup end
]], colors.cursorline, colors.matchParen))

