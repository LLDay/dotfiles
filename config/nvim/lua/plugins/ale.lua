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

local colors = require('plugins.colors')
local errors = string.gsub([[
autocmd ColorScheme * highlight! ALEErrorSignLineNr guifg=color gui=bold
autocmd ColorScheme * highlight! ALEError guifg=color gui=bold,underline
autocmd ColorScheme * highlight! ALEVirtualTextError guifg=color
]], 'color', colors.error)

local warnings = string.gsub([[
autocmd ColorScheme * highlight! ALEWarning guifg=color gui=bold,underline
autocmd ColorScheme * highlight! ALEWarningSignLineNr guifg=color gui=bold
autocmd ColorScheme * highlight! ALEVirtualTextWarning guifg=color
]], 'color', colors.warning)

local infos = string.gsub([[
autocmd ColorScheme * highlight! ALEInfo guifg=color gui=bold,underline
autocmd ColorScheme * highlight! ALEInfoSignLineNr guifg=color gui=bold
autocmd ColorScheme * highlight! ALEVirtualTextInfo guifg=color
]], 'color', colors.info)

cmd("augroup colors\n" .. errors .. "\n" .. warnings .. "\n" .. infos .. "\n" ..
        "augroup end")
