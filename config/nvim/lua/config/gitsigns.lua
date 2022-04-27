local cmd = vim.cmd
local sign = { text = "│" }

require("gitsigns").setup({
    signs = {
        add = sign,
        change = sign,
        delete = sign,
        topdelete = sign,
        changedelete = sign,
    },
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function(_)
        local colors = require("config.colors")
        vim.cmd(string.format("highlight! diffAdded guifg=%s", colors.diffAdded))
        vim.cmd(string.format("highlight! diffChanged guifg=%s", colors.diffChanged))
        vim.cmd(string.format("highlight! diffDeleted guifg=%s", colors.diffDeleted))
        vim.cmd("link GitSignsDeleteLn diffDeleted")
    end,
})
