nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt
nmap <leader>9 9gt
nmap <leader>0 10gt

nmap c1 :tabclose 1 <CR>
nmap c2 :tabclose 2 <CR>
nmap c3 :tabclose 3 <CR>
nmap c4 :tabclose 4 <CR>
nmap c5 :tabclose 5 <CR>
nmap c6 :tabclose 6 <CR>
nmap c7 :tabclose 7 <CR>
nmap c8 :tabclose 8 <CR>
nmap c9 :tabclose 9 <CR>
nmap c0 :tabclose 10 <CR>

let g:lightline = {'colorscheme': 'jellybeans'}

let g:lightline.tabline = {
            \'left'  : [['tabs']],
            \'right' : []}

let g:lightline.tab = {
            \ 'active'   : [ 'readonly', 'filename', 'modified' ],
            \ 'inactive' : [ 'tabnum', 'readonly', 'filename', 'modified' ]}

let g:lightline.component_expand = {
            \ 'linter_infos'    : 'lightline#ale#infos',
            \ 'linter_warnings' : 'lightline#ale#warnings',
            \ 'linter_errors'   : 'lightline#ale#errors'}

let g:lightline.component_type = {
            \ 'linter_infos'    : 'right',
            \ 'linter_warnings' : 'warning',
            \ 'linter_errors'   : 'error'}

let g:lightline.active = { 'right': [
            \ ['lineinfo'],
            \ ['percent'],
            \ ['fileformat', 'fileencoding', 'filetype'],
            \ ['linter_errors', 'linter_warnings', 'linter_infos']] }

let g:lightline#ale#indicator_infos = 'i'
let g:lightline#ale#indicator_warnings = 'w'
let g:lightline#ale#indicator_errors = 'e'

