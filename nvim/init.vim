filetype plugin indent off

runtime! ./option.vim
runtime! ./keymap.vim

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

" カラースキーマの設定をここに書く
" colorscheme gruvbox
" colorscheme elly
" colorscheme everforest
" colorscheme one
" colorscheme nord
" colorscheme OceanicNext
" colorscheme ayu
colorscheme nvcode
" colorscheme tokyonight
" colorscheme rigel
" colorscheme NeoSolarized

" 透明にする
" colorscheme より下で指定する
highlight Normal guibg=NONE ctermbg=NONE
highlight Comment guibg=NONE ctermbg=NONE
highlight Constant guibg=NONE ctermbg=NONE
highlight Special guibg=NONE ctermbg=NONE
highlight Identifier guibg=NONE ctermbg=NONE
highlight Statement guibg=NONE ctermbg=NONE
highlight PreProc guibg=NONE ctermbg=NONE
highlight Type guibg=NONE ctermbg=NONE
highlight Underlined guibg=NONE ctermbg=NONE
highlight Todo guibg=NONE ctermbg=NONE
highlight String guibg=NONE ctermbg=NONE
highlight Function guibg=NONE ctermbg=NONE
highlight Conditional guibg=NONE ctermbg=NONE
highlight Repeat guibg=NONE ctermbg=NONE
highlight Operator guibg=NONE ctermbg=NONE
highlight Structure guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight CursorLineNr guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE

" set background=light
set clipboard+=unnamedplus

let g:dein#auto_recache = v:true
let g:dein#enable_notification = v:true


" lua/plugins/ 以下をrequireでロードする必要がある
lua require('plugins/galaxyline')
lua require('plugins/todo-comments')
lua require('plugins/spectre')
lua require('plugins/gitsigns')
lua require('plugins/nvim-tree')
lua require('plugins/nvim-treesitter')
lua require('plugins/telescope')

" filetypeにplaintexが適応されないようにする
let g:tex_flavor = "latex"
autocmd BufNewFile,BufRead *.bib set filetype=bibtex

set winblend=10
" TODO: cocのfloat windowになんとかしてjumpしたいができない
" see also https://github.com/neoclide/coc.nvim/issues/3251
" see also https://github.com/neoclide/coc.nvim/discussions/3252
" inoremap <nowait><expr> <c-w> "\<c-r>=coc#float#jump()\<cr>"
" inoremap <nowait><expr> <c-w> "\<c-r>=win_gotoid(g:coc_last_float_win)\<cr>"
