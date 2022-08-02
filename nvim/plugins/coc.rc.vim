let g:coc_global_extensions = [
      \'coc-snippets',
      \'coc-json',
      \'coc-yaml',
      \'coc-toml',
      \'coc-pyright',
      \'coc-rust-analyzer',
      \'coc-julia',
      \'coc-java',
      \'coc-deno',
      \'coc-sh',
      \'coc-flutter',
      \'coc-tsserver',
      \'coc-texlab',
      \'coc-go',
      \'coc-sumneko-lua',
      \'coc-elixir',
      \'coc-sql',
      \'coc-css',
      \'coc-html',
      \'@yaegassy/coc-intelephense',
      \'coc-clangd',
      \]
" coc-javaのjdlはcoccommandからinstallできる

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

set updatetime=1000


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" nnoremap <leader>a :call CocAction('definitionHover')<CR>
" show documentation in preview window.
nnoremap <leader>d :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap == :call CocActionAsync('format')<CR>
nnoremap <leader>jd :call CocAction('jumpDefinition', 'drop')<CR>
nnoremap <leader>jr :call CocAction('jumpReferences', 'drop')<CR>
" <Plug>はnnoremapと一緒に使えない、<CR>もいらない
" Plugはvimがプラグイン作者のために用意したaliasみたいなもので
" 他のバインドや関数とかぶらない．
" noremapは素のvimのmappingしかみないので再帰的にremappingされることがない．
" よって<Plug>(hoge)はプラグイン側でmappingされているので
" noremapで<Plug>(hoge)を呼ぶことは出来ないことからnmapで良い

" rename
nmap <leader>rn <Plug>(coc-rename)
" code action
nmap <leader>ca <Plug>(coc-codeaction-cursor)
" auto fix
nmap <leader>af <Plug>(coc-fix-current)
" error window
nmap <leader>e :CocDiagnostics<CR>
" nmap <leader>e :CocAction('diagnosticToggle')<CR>

" vimのデフォルトの機能 autocmd CursorHoldを使っている
" autocmd CursorHold * silent call CocActionAsync('highlight')
"autocmd CursorHold * silent call s:show_documentation()

"highlight CocErrorSign ctermfg=15 ctermbg=196
"highlight CocWarningSign ctermfg=0 ctermbg=172
hi! CocErrorSign guifg=#d1666a

" enterで決定する
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" golang
augroup MyGolang
  autocmd!
  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
  " autocmd BufWritePre *.go :call CocAction('format')
augroup END

" float window を scrollする
nnoremap <nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-j>"
nnoremap <nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-k>"

