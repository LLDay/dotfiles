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
-- LSP
--------------------------------------------------

map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', ns)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', ns)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', ns)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', ns)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', ns)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', ns)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', ns)

map('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', ns)
map('n', 'K',
    '<cmd>lua vim.lsp.buf.hover()<CR><cmd>lua vim.lsp.buf.signature_help()<CR>',
    ns)

map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', ns)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', ns)
map('n', '<space>wl',
    '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', ns)

map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', ns)
map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', ns)
map('n', '<space>ac', '<cmd>lua vim.lsp.buf.code_action()<CR>', ns)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', ns)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', ns)
