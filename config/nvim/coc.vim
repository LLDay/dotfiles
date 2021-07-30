map <silent> <F4>  :CocList tasks<CR>

nmap <silent> <F2> <Plug>(coc-rename)
nmap <silent> <F7> <Plug>(coc-diagnostic-prev)
nmap <silent> <F8> <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs :CocCommand clangd.switchSourceHeader<CR>
nmap <silent> go :CocList outline<CR>

nmap <c-_> :CocAction<CR>

nmap <silent> <c-p> :CocCommand fzf-preview.DirectoryFiles<CR>
nmap <silent> <c-b> :CocCommand fzf-preview.AllBuffers<CR>
nmap <silent> <c-f> :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f :CocSearch<space>

inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

augroup Common
    autocmd InsertEnter * silent call CocActionAsync('showSignatureHelp')
augroup END

command! -nargs=0 Format :call CocAction('format')
