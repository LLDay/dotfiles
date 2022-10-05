local map = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

vim.g.mapleader = " "

--------------------------------------------------
-- Options
--------------------------------------------------

map("", "<leader>n", "<cmd>noh<CR>", ns)
map("t", "<Esc>", "<C-\\><C-n>", {})

--------------------------------------------------
-- Navigation
--------------------------------------------------

map("n", "[e", "<cmd>m .-2<CR>==", ns)
map("n", "]e", "<cmd>m .+1<CR>==", ns)
map("n", "[<leader>", "O<Esc>", ns)
map("n", "]<leader>", "o<Esc>", ns)
map("n", "[A", "<cmd>first<CR>", ns)
map("n", "]A", "<cmd>last<CR>", ns)
map("n", "[b", "<cmd>bprevious<CR>", ns)
map("n", "]b", "<cmd>bnext<CR>", ns)
map("n", "[B", "<cmd>bfirst<CR>", ns)
map("n", "]B", "<cmd>blast<CR>", ns)
map("n", "[l", "<cmd>lprevious<CR>", ns)
map("n", "]l", "<cmd>lnext<CR>", ns)
map("n", "[L", "<cmd>lfirst<CR>", ns)
map("n", "]L", "<cmd>llast<CR>", ns)
map("n", "[<C-L>", "<cmd>lpfile<CR>", ns)
map("n", "]<C-L>", "<cmd>lnfile<CR>", ns)
map("n", "[q", "<cmd>cprevious<CR>", ns)
map("n", "]q", "<cmd>cnext<CR>", ns)
map("n", "[Q", "<cmd>cfirst<CR>", ns)
map("n", "]Q", "<cmd>clast<CR>", ns)
map("n", "[<C-Q>*", "<cmd>cpfile<CR>", ns)
map("n", "]<C-Q>*", "<cmd>cnfile<CR>", ns)
map("n", "[t", "<cmd>tprevious<CR>", ns)
map("n", "]t", "<cmd>tnext<CR>", ns)
map("n", "[T", "<cmd>tfirst<CR>", ns)
map("n", "]T", "<cmd>tlast<CR>", ns)

map("", "<C-h>", "<cmd>wincmd h<CR>", ns)
map("", "<C-j>", "<cmd>wincmd j<CR>", ns)
map("", "<C-k>", "<cmd>wincmd k<CR>", ns)
map("", "<C-l>", "<cmd>wincmd l<CR>", ns)
map("", "<leader>v", "<cmd>vsp<CR>", ns)
map("", "<leader>s", "<cmd>sp<CR>", ns)
map("", "<leader>l", "<cmd>call ToggleLocationList()<CR>", ns)
map("", "<leader>q", "<cmd>call ToggleQuickfixList()<CR>", ns)
map("", "<leader>p", '"_dP', ns)

--------------------------------------------------
-- Tabs
--------------------------------------------------

for tab = 1, 9 do
    map("n", "<leader>" .. tab, tab .. "gt", ns)
    map("n", "c" .. tab, "<cmd>tabclose " .. tab .. "<CR>", ns)
end

--------------------------------------------------
-- Simple plugins
--------------------------------------------------

map("n", "U", "<cmd>UndotreeToggle<CR>", ns)
map("", "<leader>t", "<cmd>ToggleTerm<CR>", ns)
map("", "<leader>o", "<cmd>LfToggle<CR>", ns)
map("", "<leader>=", ":Tabularize /", {})
map("x", "<leader>=", ":Tabularize /", {})

--------------------------------------------------
-- Gitsigns
--------------------------------------------------

map("", "<leader>gis", "<cmd>Gitsigns preview_hunk<CR>", ns)
map("", "<leader>gid", "<cmd>Gitsigns diffthis<CR>", ns)
map("", "[g", "<cmd>Gitsigns prev_hunk<CR>", ns)
map("", "]g", "<cmd>Gitsigns next_hunk<CR>", ns)

--------------------------------------------------
-- DAP
--------------------------------------------------

map("n", "<F5>", ":lua require('dap').continue()<CR>", ns)
map("n", "<F9>", ":lua require('dap').toggle_breakpoint()<CR>", ns)

map("n", "<F10>", ":lua require('dap').step_over()<CR>", ns)
map("n", "<F11>", ":lua require('dap').step_into()<CR>", ns)
map("n", "<F12>", ":lua require('dap').step_out()<CR>", ns)

--------------------------------------------------
-- Telescope
--------------------------------------------------

map("n", "<c-p>", "<cmd>Telescope find_files<CR>", ns)
map("n", "<c-b>", "<cmd>Telescope buffers<CR>", ns)
map("n", "<c-f>", "<cmd>Telescope live_grep<CR>", ns)

--------------------------------------------------
-- LSP
--------------------------------------------------

map("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", ns)
map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", ns)
map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", ns)
map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", ns)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", ns)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", ns)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", ns)

map("n", "<leader>ac", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true })
map("x", "<leader>ac", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true })

map("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", ns)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", ns)

map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", ns)
map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", ns)
map("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", ns)

map("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", ns)
map("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", ns)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", ns)
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", ns)

--------------------------------------------------
-- Trouble
--------------------------------------------------

map("n", "<leader>xx", "<cmd>Trouble<cr>", ns)
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", ns)
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", ns)
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", ns)
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", ns)
map("n", "gR", "<cmd>Trouble lsp_references<cr>", ns)
