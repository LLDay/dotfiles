vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function(_)
        vim.opt_local.number = false
    end,
})

vim.api.nvim_create_autocmd("TermEnter", {
    pattern = "*",
    callback = function(_)
        vim.opt_local.scrolloff = 0
    end,
})

vim.api.nvim_create_autocmd("TermLeave", {
    pattern = "TermLeave",
    callback = function(_)
        vim.opt_local.scrolloff = 0
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "yaml,typescript,javascript",
    callback = function(_)
        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.tabstop = 2
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown,tex,txt",
    callback = function(_)
        vim.opt_local.linebreak = true
        vim.opt_local.textwidth = 80
        vim.opt_local.wrap = true
    end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "plugins.lua",
    callback = function(_)
        vim.cmd("source <afile> | PackerCompile")
    end,
})

vim.api.nvim_create_autocmd("CursorHold", {
    pattern = "*",
    callback = function(_)
        vim.diagnostic.open_float(nil, { focus = false })
    end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function(_)
        local colors = require("config.colors")
        vim.cmd("highlight! CursorLineNr guifg=" .. colors.cursorline .. " gui=bold")
        vim.cmd("highlight! link SignColumn LineNr")

        vim.cmd(string.format("highlight! DiagnosticLineNrError guifg=%s gui=bold", colors.error))
        vim.cmd(string.format("highlight! DiagnosticLineNrWarn guifg=%s gui=bold", colors.warning))
        vim.cmd(string.format("highlight! DiagnosticLineNrInfo guifg=%s gui=bold", colors.info))
        vim.cmd(string.format("highlight! DiagnosticLineNrHint guifg=%s gui=bold", colors.hint))

        vim.cmd("sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError")
        vim.cmd("sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn")
        vim.cmd("sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo")
        vim.cmd("sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint")
    end,
})

vim.cmd([[
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
]])

vim.api.nvim_create_user_command("Reload", function(_)
    vim.cmd("source $MYVIMRC")
end, { nargs = 0 })
