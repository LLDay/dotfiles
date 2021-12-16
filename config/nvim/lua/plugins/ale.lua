local g = vim.g
local cmd = vim.cmd

g.ale_completion_enabled = 0
g.ale_echo_cursor = 1
g.ale_hover_cursor = 0
g.ale_set_balloons = 0
g.ale_set_highlights = 1
g.ale_set_loclist = 1
g.ale_set_quickfix = 1
g.ale_set_signs = 1
g.ale_virtualtext_cursor = 1
g.ale_sign_highlight_linenrs = 1

g.ale_fix_on_save = 1
g.ale_lint_on_enter = 0
g.ale_lint_on_insert_leave = 0
g.ale_warn_about_trailing_whitespace = 1

g.ale_rust_cargo_use_clippy = 1
g.ale_rust_cargo_check_tests = 1

g.ale_cpp_cc_options =
    '-std=c++17 -Wall -Wextra -pedantic -Wno-pragma-once-outside-header'
g.ale_cpp_cppcheck_options =
    '--force --suppress=unmatchedSuppression --enable=all'
g.ale_cpp_clangtidy_extra_options = '-extra-arg=--std=c++17'
g.ale_cpp_cpplint_options = '--filter=-legal/copyright'
g.ale_cpp_clazy_checks = {'level 2'}
g.ale_linters_explicit = 1

g.ale_sign_error = ''
g.ale_sign_warning = ''
g.ale_sign_info = ''

g.ale_linters = {
    cmake = {'cmakelint'},
    cpp = {'cc', 'clazy', 'cpplint', 'flawfinder'},
    lua = {'luacheck'},
    puppet = {'puppet', 'puppetlint'},
    python = {'bandit', 'pep8', 'pylint'},
    rust = {'cargo'},
    sh = {'shellcheck'},
    sql = {'sqlint'},
    vim = {'vimt'}
}

g.ale_fixers = {
    cpp = {'clang-format'},
    tex = {'latexindent'},
    rust = {'rustfmt'},
    json = {'jq'},
    lua = {'lua-format'},
    cmake = {'cmakeformat'},
    python = {'autopep8', 'black', 'reorder-python-imports'},
    puppet = {'puppetlint'}
}

cmd [[
augroup colors
    autocmd ColorScheme * highlight! link ALEError red
    autocmd ColorScheme * highlight! link ALEErrorSign red
    autocmd ColorScheme * highlight! link ALEErrorSignLineNr red
    autocmd ColorScheme * highlight! link ALEVirtualTextError red

    autocmd ColorScheme * highlight! link ALEWarning orange
    autocmd ColorScheme * highlight! link ALEWarningSign orange
    autocmd ColorScheme * highlight! link ALEWarningSignLineNr orange
    autocmd ColorScheme * highlight! link ALEVirtualTextWarning orange

    autocmd ColorScheme * highlight! link ALEInfo blue
    autocmd ColorScheme * highlight! link ALEInfoSign blue
    autocmd ColorScheme * highlight! link ALEInfoSignLineNr blue
    autocmd ColorScheme * highlight! link ALEVirtualTextInfo blue
augroup end
]]

