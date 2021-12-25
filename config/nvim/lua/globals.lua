local g = vim.g

--------------------------------------------------
-- Plugins
--------------------------------------------------

g.XkbSwitchEnabled = 1
g.asyncrun_open = 12
g.asyncrun_rootmarks = {
    '.tasks.ini', '.root', 'build/', 'compile_commands.json', '.svn', '.git',
    '.bzr'
}
g.asynctasks_config_name = '.tasks.ini'
g.asynctasks_profile = 'debug'
g.asynctasks_term_pos = 'bottom'
g.floaterm_height = 0.8
g.floaterm_opener = 'edit'
g.floaterm_width = 0.8
g.fzf_buffers_jump = 1
g.fzf_preview_default_fzf_options = {['--tiebreak'] = 'end'}
g.fzf_preview_grep_cmd = 'rg -i --line-number --no-heading -w'
g.gitgutter_max_signs = 30
g.gitgutter_sign_priority = 0
g.lf_command_override = 'lfrun'
g.neoterm_autoinsert = 1
g.neoterm_default_mod = 'botright'
g.neoterm_size = 12
g.tokyonight_enable_italic = 1
g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
g.rooter_patterns = {
    '.root', 'build/', 'compile_commands.json', '.svn', '.git', '.bzr'
}
