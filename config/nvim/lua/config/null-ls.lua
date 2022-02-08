local null_ls = require("null-ls")

local helpers = require("null-ls.helpers")
local methods = require("null-ls.methods")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local pandoc = helpers.make_builtin({
    name = "pandoc",
    method = methods.internal.FORMATTING,
    filetypes = {"text", "markdown"},
    generator_opts = {
        command = "pandoc",
        args = {"-f", "gfm", "-t", "gfm", "$FILENAME"},
        to_stdin = false
    },
    factory = helpers.formatter_factory
})

local sources = {
    pandoc, formatting.lua_format, formatting.autopep8, formatting.clang_format,
    formatting.cmake_format, formatting.rustfmt, diagnostics.luacheck,
    diagnostics.pylint, diagnostics.shellcheck, diagnostics.vint,
    diagnostics.eslint
}

null_ls.setup({
    sources = sources,

    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()]]
        end
    end
})
