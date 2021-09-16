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
autocmd ColorScheme * highlight Comment ctermfg=250 guifg=#008800
" colorscheme gruvbox
" colorscheme elly
" colorscheme everforest
" colorscheme one
" colorscheme nord
" colorscheme OceanicNext
" colorscheme ayu
colorscheme nvcode
" colorscheme tokyonight
" set background=dark
highlight Normal guibg=none ctermbg=none

set clipboard+=unnamedplus

let g:dein#auto_recache = v:true
let g:dein#enable_notification = v:true


" lua/plugins/ 以下をrequireでロードする必要がある
lua require('plugins/galaxyline')
lua require('plugins/todo-comments')
lua require('plugins/spectre')
lua require('plugins/gitsigns')

" filetypeにplaintexが適応されないようにする
let g:tex_flavor = "latex"
autocmd BufNewFile,BufRead *.bib set filetype=bibtex

