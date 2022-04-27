local lsp_installer_servers = require("nvim-lsp-installer.servers")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})

local function on_attach(client, _)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
end

local default_servers = { "tsserver", "pyright" }

for _, server_name in pairs(default_servers) do
    local is_available, server = lsp_installer_servers.get_server(server_name)
    local opts = { capabilities = capabilities, on_attach = on_attach }
    if is_available then
        if not server:is_installed() then
            server:install()
        end

        server:on_ready(function()
            server:setup(opts)
        end)
    end
end

local servers_with_configs = { "sumneko_lua", "rust_analyzer", "taplo" }
for _, server_name in pairs(servers_with_configs) do
    local is_available, server = lsp_installer_servers.get_server(server_name)
    local opts = { capabilities = capabilities, on_attach = on_attach }

    if is_available then
        if not server:is_installed() then
            server:install()
        end

        local setup = require("config.lsp." .. server_name)
        setup(server, opts)
    end
end
