local toggleterm = require("toggleterm")

local Terminal = require("toggleterm.terminal").Terminal

toggleterm.setup({
    shade_terminals = false,
    highlights = {
        Normal = {
            link = "Normal",
        },
        NormalFloat = {
            link = "Normal",
        },
        FloatBorder = {
            link = "LineNr",
        },
    },
})

local height = 0.8
local width = 0.8

local temp_path = "/tmp/lfpickerpath"
local lf = Terminal:new({
    cmd = "lf -selection-path " .. temp_path,
    direction = "float",
    shade_terminals = false,
    float_opts = {
        height = function()
            local lines = vim.api.nvim_get_option("lines")
            return math.floor(lines * height)
        end,
        width = function()
            local columns = vim.api.nvim_get_option("columns")
            return math.floor(columns * width)
        end,
    },
    on_exit = function(term)
        local file = io.open(temp_path, "r")
        if file ~= nil then
            vim.api.nvim_win_close(term.window, true)
            vim.api.nvim_buf_delete(term.bufnr, { force = true })
            vim.cmd("edit " .. file:read("*a"))

            file:close()
            os.remove(temp_path)
        end
    end,
})

vim.api.nvim_create_user_command("LfToggle", function(_)
    lf:toggle()
end, { nargs = 0 })
