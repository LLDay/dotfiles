local cmd = vim.cmd
local sign = {text = '│'}

require('gitsigns').setup {
    signs = {
        add = sign,
        change = sign,
        delete = sign,
        topdelete = sign,
        changedelete = sign
    }
}

local colors = require('config.colors')

cmd(string.format([[
augroup colors
    autocmd ColorScheme * highlight! diffAdded guifg=%s
    autocmd ColorScheme * highlight! diffChanged guifg=%s
    autocmd ColorScheme * highlight! diffDeleted guifg=%s
    autocmd ColorScheme * highlight! link GitSignsDeleteLn diffDeleted
augroup end
]], colors.diffAdded, colors.diffChanged, colors.diffDeleted))
