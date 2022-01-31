local cmd = vim.cmd
cmd [[colorscheme kanagawa]]

local colors = require('config.colors')

cmd(string.format([[
augroup colors
    autocmd ColorScheme * highlight! CursorLineNr guifg=%s gui=bold
augroup end
]], colors.cursorline))