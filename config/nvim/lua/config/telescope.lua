local actions = require("telescope.actions")

local layout_config = { height = 0.95, width = 0.25, anchor = "E" }

require("telescope").setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_cursor({}),
        },
    },
    defaults = {
        prompt_prefix = "> ",
        mappings = {
            i = {
                ["<ESC>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            find_command = { "rg", "--files", "-L" },
            layout_config = layout_config,
        },
        buffers = { theme = "dropdown", layout_config = layout_config },
        lsp_code_actions = { theme = "cursor", timeout = 300 },
    },
})

require("telescope").load_extension("ui-select")
