local lsp_installer_servers = require('nvim-lsp-installer.servers')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp
                                                                     .protocol
                                                                     .make_client_capabilities())

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false
})

local function on_attach(client, _)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
end

local function setup_server(server_name, opts)
    local is_available, server = lsp_installer_servers.get_server(server_name)
    if is_available then
        opts.capabilities = capabilities
        opts.on_attach = on_attach
        server:on_ready(function() server:setup(opts) end)
        if not server:is_installed() then server:install() end
    end
end

local servers = {'sumneko_lua', 'rust_analyzer', 'taplo'}
local servers_with_defaults = {'tsserver', 'pyright'}

for _, server_name in pairs(servers) do
    local server = require('config.lsp.' .. server_name)
    setup_server(server_name, server)
end

for _, server_name in pairs(servers_with_defaults) do
    setup_server(server_name, {})
end
