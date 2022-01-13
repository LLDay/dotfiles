local actions = require("telescope.actions")

require('telescope').setup({
    defaults = {
        prompt_prefix = '> ',
        mappings = {
            i = {
                ["<ESC>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous
            }
        }
    },
    pickers = {
        find_files = {
            theme = 'dropdown',
            find_command = {'rg', '--ignore', '--hidden', '--files', '-L'},
            layout_strategy = 'vertical',
            layout_config = {height = 0.95, width = 0.5, anchor = 'E'}
        }
    }
})
