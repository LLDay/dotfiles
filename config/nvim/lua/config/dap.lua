local dapui = require("dapui")
local dap = require("dap")
local home = os.getenv("HOME")

dapui.setup()

dap.listeners.before.event_initialized["load_launchjs"] = function() end
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

dap.adapters.lldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = home .. "/.local/share/nvim/mason/packages/codelldb/codelldb",
        args = { "--port", "${port}" },
    },
}

local M = {}
local dap_types = { lldb = { "c", "cpp", "rust" } }

M.continue = function()
    local cwd = vim.fn.getcwd()
    require("dap.ext.vscode").load_launchjs(cwd .. "/.vscode/launch.json", dap_types)
    dap.continue()
end

return M
