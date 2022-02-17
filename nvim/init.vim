filetype plugin indent off

runtime! ./option.vim
lua require('keymap')

" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " localのサンプルplugin
  call dein#add('~/Documents/github.com/hamadakafu/sample-nvim-plugin.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" call map(dein#check_clean(), "delete(v:val, 'rf')")

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein Scripts-------------------------

runtime! ./colors.vim

" TODO: cocのfloat windowになんとかしてjumpしたいができない
" see also https://github.com/neoclide/coc.nvim/issues/3251
" see also https://github.com/neoclide/coc.nvim/discussions/3252
" inoremap <nowait><expr> <c-w> "\<c-r>=coc#float#jump()\<cr>"
" inoremap <nowait><expr> <c-w> "\<c-r>=win_gotoid(g:coc_last_float_win)\<cr>"
