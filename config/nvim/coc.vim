map <silent> <C-b> :CocCommand explorer --position right<CR>
map <silent> <F4> :CocList tasks<CR>

nmap <silent> <F2> <Plug>(coc-rename)
nmap <silent> <F7> <Plug>(coc-diagnostic-prev)
nmap <silent> <F8> <Plug>(coc-diagnostic-next)

nmap <leader> gq <Plug>(coc-format-selected)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gs :CocCommand clangd.switchSourceHeader<CR>
nmap <silent> go :CocList outline<CR>

nmap <silent> <leader>fs :CocList symbols<CR>
nmap <silent> <leader>o :CocCommand fzf-preview.ProjectFiles<CR>

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd CursorHold * if ! coc#util#has_float() | call CocActionAsync('doHover')
autocmd InsertEnter * silent call CocActionAsync('showSignatureHelp')

command! -nargs=0 Format :call CocAction('format')
