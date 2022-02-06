local opt = vim.opt

--------------------------------------------------
-- Appearance
--------------------------------------------------

opt.cursorline = true
opt.scrolloff = 10
opt.shortmess:remove('c')
opt.showmode = false
opt.termguicolors = true

--------------------------------------------------
-- Indentations
--------------------------------------------------

local indent = 4
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.showcmd = true
opt.smarttab = true
opt.softtabstop = indent
opt.tabstop = indent

--------------------------------------------------
-- Search
--------------------------------------------------

opt.hlsearch = true
opt.ignorecase = true
opt.inccommand = 'split'
opt.incsearch = true
opt.smartcase = true

--------------------------------------------------
-- Windows
--------------------------------------------------

opt.hidden = true
opt.laststatus = 2
opt.number = true
opt.relativenumber = true
opt.showtabline = 1
opt.signcolumn = 'auto:3'
opt.splitright = true
opt.title = true

--------------------------------------------------
-- Undo
--------------------------------------------------

opt.undodir = vim.env.HOME .. '/.cache/vim/undo'
opt.undofile = true
opt.updatetime = 500

--------------------------------------------------
-- Text
--------------------------------------------------

opt.iskeyword:remove(':')
opt.matchpairs:append('<:>')
opt.encoding = 'utf-8'
opt.spelllang = {'en_us', 'ru_yo'}
opt.wrap = false
opt.keymap = 'russian-jcukenwin'
opt.iminsert = 0
opt.imsearch = 0

--------------------------------------------------
-- Completion
--------------------------------------------------

opt.completeopt = 'longest,menuone,noselect'
opt.wildmode = 'longest:full,full'

--------------------------------------------------
-- Control
--------------------------------------------------

opt.clipboard = 'unnamedplus'
opt.mouse = 'a'
opt.timeout = false
