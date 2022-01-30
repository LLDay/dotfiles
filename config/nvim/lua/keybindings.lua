local map = vim.api.nvim_set_keymap
local s = {silent = true}
local ns = {noremap = true, silent = true}
local nse = {noremap = true, silent = true, expr = true}

vim.g.mapleader = ' '

--------------------------------------------------
-- Options
--------------------------------------------------

map('', '<leader>n', '<cmd>noh<CR>', ns)
map('t', '<Esc>', '<C-\\><C-n>', {})

--------------------------------------------------
-- Windows
--------------------------------------------------
map('', '<C-h>', '<cmd>wincmd h<CR>', ns)
map('', '<C-j>', '<cmd>wincmd j<CR>', ns)
map('', '<C-k>', '<cmd>wincmd k<CR>', ns)
map('', '<C-l>', '<cmd>wincmd l<CR>', ns)
map('', '<leader>v', '<cmd>vsp<CR>', ns)
map('', '<leader>s', '<cmd>sp<CR>', ns)
map('', '<leader>l', '<cmd>call ToggleLocationList()<CR>', ns)
map('', '<leader>q', '<cmd>call ToggleQuickfixList()<CR>', ns)

--------------------------------------------------
-- Tabs
--------------------------------------------------

for tab = 1, 9 do
    map('n', '<leader>' .. tab, tab .. 'gt', ns)
    map('n', 'c' .. tab, '<cmd>tabclose ' .. tab .. '<CR>', ns)
end

--------------------------------------------------
-- Simple plugins
--------------------------------------------------

map('n', 'U', '<cmd>UndotreeToggle<CR>', ns)
map('', '<leader>t', '<cmd>Ttoggle<CR>', ns)
map('', '<leader>o', '<cmd>FloatermNew lf<CR>', ns)
map('', '<leader>=', ':Tabularize /', {})
map('x', '<leader>=', ':Tabularize /', {})

map('', '[d', '<Plug>(ale_previous_wrap)', s)
map('', ']d', '<Plug>(ale_next_wrap)', s)

--------------------------------------------------
-- Gitsigns
--------------------------------------------------

map('', '<leader>gis', '<cmd>Gitsigns preview_hunk<CR>', ns)
map('', '<leader>gid', '<cmd>Gitsigns diffthis<CR>', ns)
map('', '[g', '<cmd>Gitsigns prev_hunk<CR>', ns)
map('', ']g', '<cmd>Gitsigns next_hunk<CR>', ns)

--------------------------------------------------
-- Gitsigns
--------------------------------------------------

map('n', '<c-p>', '<cmd>Telescope find_files<CR>', ns)
map('n', '<c-b>', '<cmd>Telescope buffers<CR>', ns)

--------------------------------------------------
-- Coc
--------------------------------------------------

if vim.fn.has('nvim') then
    map('i', '<c-space>', 'coc#refresh()', nse)
else
    map('i', '<c-@>', 'coc#refresh()', nse)
end

map('n', '<F2>', '<Plug>(coc-rename)', s)

map('n', 'gd', '<Plug>(coc-definition)', s)
map('n', 'gi', '<Plug>(coc-implementation)', s)
map('n', 'gr', '<Plug>(coc-references)', s)

map('n', 'gs', '<cmd>CocCommand clangd.switchSourceHeader<CR>', ns)
map('n', 'go', '<cmd>CocList outline<CR>', ns)

map('n', '<leader>ac', '<Plug>(coc-codeaction-cursor)', s)
map('n', '<leader>af', '<Plug>(coc-fix-current)', s)
map('n', '<leader>ar', '<Plug>(coc-codelens-action)', s)

map('x', '<leader>a', '<Plug>(coc-codeaction-selected)', s)
map('n', '<leader>a', '<Plug>(coc-codeaction-selected)', s)

map('n', '<c-f>', '<cmd>CocSearch <C-R>=expand("<cword>")<CR><CR>', s)
map('n', '<leader>f', ':CocSearch<space>', {})

map('n', 'K', '<cmd>call CocActionAsync("doHover")<CR>', ns)
map('n', '<leader>p', '<cmd>CocList -A yank<CR>', {})

map('x', 'if', '<Plug>(coc-funcobj-i)', {})
map('o', 'if', '<Plug>(coc-funcobj-i)', {})
map('x', 'af', '<Plug>(coc-funcobj-a)', {})
map('o', 'af', '<Plug>(coc-funcobj-a)', {})
map('x', 'ic', '<Plug>(coc-classobj-i)', {})
map('o', 'ic', '<Plug>(coc-classobj-i)', {})
map('x', 'ac', '<Plug>(coc-classobj-a)', {})
map('o', 'ac', '<Plug>(coc-classobj-a)', {})
