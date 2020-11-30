map <silent> <F4>  :CocList tasks<CR>

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

nnoremap <silent> K :call CocActionAsync('doHover')<CR>

augroup Common
    autocmd InsertEnter * silent call CocActionAsync('showSignatureHelp')
augroup END

command! -nargs=0 Format :call CocAction('format')
