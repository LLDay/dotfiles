local lsp_installer_servers = require('nvim-lsp-installer.servers')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp
                                                                     .protocol
                                                                     .make_client_capabilities())

local function setup_server(server_name, opts)
    local is_available, server = lsp_installer_servers.get_server(server_name)
    if is_available then
        opts.capabilities = capabilities
        server:on_ready(function() server:setup(opts) end)
        if not server:is_installed() then server:install() end
    end
end

local servers = {'sumneko_lua', 'rust_analyzer', 'taplo'}
local server_with_defaults = {'tsserver'}

for _, server_name in pairs(servers) do
    local server = require('config.lsp.' .. server_name)
    setup_server(server_name, server)
end

for _, server_name in pairs(server_with_defaults) do
    setup_server(server_name, {})
end
