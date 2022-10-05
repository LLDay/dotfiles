local lspconfig = require("lspconfig")
local lsp_installer = require("nvim-lsp-installer")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp_installer.setup({})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})

local function on_attach(client, _)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
end

local servers = { "sumneko_lua", "rust_analyzer", "taplo", "tsserver", "pyright", "solang" }

for _, server in ipairs(servers) do
    local ok, settings = pcall(require, "config.lsp_settings." .. server)
    if not ok then
        settings = {}
    end

    lspconfig[server].setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = settings,
    })
end
