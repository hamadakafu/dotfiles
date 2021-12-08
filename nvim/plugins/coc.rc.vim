let g:coc_global_extensions = [
      \'coc-snippets',
      \'coc-pyright',
      \'coc-yaml',
      \'coc-rust-analyzer',
      \'coc-metals',
      \'coc-julia',
      \'coc-json',
      \'coc-sh',
      \'coc-graphql',
      \'coc-flutter',
      \'coc-tsserver',
      \'coc-texlab',
      \'coc-go',
      \'coc-clangd',
      \'coc-lua',
      \'coc-elixir',
      \'coc-sql',
      \]

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

set updatetime=1000


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use K to show documentation in preview window.
nnoremap <leader>d :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    "if &filetype ==# 'tex'
    "    VimtexDocPackage
    "else
    "  call CocAction('doHover')
    "endif
    call CocAction('doHover')
  endif
endfunction

nnoremap == :call CocActionAsync('format')<CR>
nnoremap <leader>jd :call CocAction('jumpDefinition', 'drop')<CR>
nnoremap <leader>jr :call CocAction('jumpReferences', 'drop')<CR>
" <Plug>はnnoremapと一緒に使えない、<CR>もいらない
" Plugはvimがプラグイン作者のために用意したaliasみたいなもので
" 他のバインドや関数とかぶらない．
" noremapは素のvimのmappingしかみないので再帰的にmappingされることがない．
" よって<Plug>(hoge)はプラグイン側でmappingされているので
" noremapで<Plug>(hoge)を呼ぶことは出来ない．

" rename
nmap <leader>rn <Plug>(coc-rename)
" code action
nmap <leader>ca <Plug>(coc-codeaction)
" auto fix
nmap <leader>af <Plug>(coc-fix-current)
" error window
nmap <leader>e :CocDiagnostics<CR>

" vimのデフォルトの機能 autocmd CursorHoldを使っている
" autocmd CursorHold * silent call CocActionAsync('highlight')
"autocmd CursorHold * silent call s:show_documentation()

"highlight CocErrorSign ctermfg=15 ctermbg=196
"highlight CocWarningSign ctermfg=0 ctermbg=172
hi! CocErrorSign guifg=#d1666a

" enterで決定する
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" golang
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
" autocmd BufWritePre *.go :call CocAction('format')

" float window を scrollする
inoremap <nowait><expr> <c-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : ""
inoremap <nowait><expr> <c-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : ""
