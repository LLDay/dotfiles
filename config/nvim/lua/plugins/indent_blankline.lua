require('indent_blankline').setup {
    show_current_context = true,
    show_current_context_start = false,
    buftype_exclude = {'terminal', 'nofile'},
    use_treesitter = true,
    show_trailing_blankline_indent = false,
    context_patterns = {
        'function', 'struct', '^enum', '^impl', 'match', '^let', 'use',
        'parameters', '^if', '^with', 'while', '^for', '^body', 'array', 'table'
    }
}
