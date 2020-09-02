let g:ale_completion_enabled = 0
let g:ale_echo_cursor = 0
let g:ale_hover_cursor = 0
let g:ale_set_balloons = 0
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
let g:ale_set_signs = 1
let g:ale_virtualtext_cursor = 1
let g:ale_sign_highlight_linenrs = 1

let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 0

let g:ale_cpp_cc_options = '-std=c++17 -Wall -Wextra -pedantic -Wno-pragma-once-outside-header'
let g:ale_cpp_cppcheck_options = '--force --suppress=unmatchedSuppression --enable=all'
let g:ale_linters_explicit = 1

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>'
let g:ale_sign_info = '-'

highlight link ALEError WarningMsg
highlight link ALEWarning DiffText
highlight link ALEInfo Question

highlight link ALEErrorSign AlEError
highlight link ALEErrorSignLineNr ALEError
highlight link ALEVirtualTextError ALEError

highlight link ALEWarningSign ALEWarning
highlight link ALEWarningSignLineNr ALEWarning
highlight link ALEVirtualTextWarning ALEWarning

highlight link ALEInfoSign ALEInfo
highlight link ALEInfoSignLineNr ALEInfo
highlight link ALEVirtualTextInfo ALEInfo

let g:ale_linters = {
            \ 'cpp': ['cc', 'cppcheck', 'clangd'],
            \ 'vim': ['vimt']
            \ }