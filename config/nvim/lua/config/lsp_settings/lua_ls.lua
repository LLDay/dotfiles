local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local settings = {
    Lua = {
        diagnostics = { globals = { "use", "vim" } },
        runtime = { version = "LuaJIT", path = runtime_path },
        telemetry = { enable = false },
        window = { progressBar = false, statusBar = false },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
    },
}

return settings
