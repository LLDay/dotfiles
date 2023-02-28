local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    diagnostics.shellcheck,
    diagnostics.vint,
    diagnostics.todo_comments,
    diagnostics.trail_space,
    formatting.autopep8,
    formatting.clang_format,
    formatting.cmake_format,
    formatting.deno_fmt,
    formatting.prettierd,
    formatting.fixjson,
    formatting.rustfmt,
    formatting.stylua,
    formatting.trim_newlines,
    formatting.trim_whitespace,
}

null_ls.setup({
    sources = sources,
    on_attach = function(client)
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = 0,
                callback = function()
                    vim.lsp.buf.format({ timeout_ms = 5000 })
                end,
            })
        end
    end,
})
