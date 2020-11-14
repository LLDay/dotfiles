map <silent> <F4>  :CocList tasks<CR>

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

nmap <silent> <F2> <Plug>(coc-rename)
nmap <silent> <F7> <Plug>(coc-diagnostic-prev)
nmap <silent> <F8> <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs :CocCommand clangd.switchSourceHeader<CR>
nmap <silent> go :CocList outline<CR>

nmap <c-_> :CocAction<CR>

nmap <silent> <c-p> :CocCommand fzf-preview.ProjectFiles<CR>
nmap <silent> <c-f> :CocSearch <C-R>=expand("<cword>")<CR><CR>

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-j> coc#_select_confirm()

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup Common
    autocmd InsertEnter * silent call CocActionAsync('showSignatureHelp')
augroup END

command! -nargs=0 Format :call CocAction('format')
