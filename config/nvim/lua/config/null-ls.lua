local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    diagnostics.eslint,
    diagnostics.pylint,
    diagnostics.shellcheck,
    diagnostics.vint,
    formatting.autopep8,
    formatting.clang_format,
    formatting.cmake_format,
    formatting.deno_fmt,
    formatting.fixjson,
    formatting.prettierd,
    formatting.rustfmt,
    formatting.stylua,
    formatting.trim_newlines,
}

null_ls.setup({
    sources = sources,
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = 0,
                callback = function()
                    vim.lsp.buf.formatting_sync(nil, 5000)
                end,
            })
        end
    end,
})
