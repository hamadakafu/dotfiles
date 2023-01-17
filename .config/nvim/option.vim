set noswapfile
set nobackup
set nowritebackup
set encoding=UTF-8
set signcolumn=yes

set number

set termguicolors

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

set clipboard=unnamedplus

set hls

set mouse=

set scrolloff=5
set sidescrolloff=6

set list

set ignorecase "小文字大文字無視する
set smartcase "大文字が入っていれば大文字を考慮する
set wrapscan

set whichwrap=b,s,<,>,[,]

set showmatch
set matchpairs& matchpairs+=<:>
set matchtime=1

" 1s で CursorHold 発火
set updatetime=1000

set hidden

set cmdheight=2

set completeopt=menuone

" 外部でファイル変更があった際に自動で読みに行く
set autoread

" transparency floating window
set winblend=10

let mapleader = " "
let g:tex_flavor = "latex"

augroup MyOption
  autocmd!

  "  directoryがない場合自動作成
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")

  " julia
  autocmd BufRead,BufNewFile *.jl set filetype=julia

  " 前回開いた位置を覚える
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

  " whitespaceをtrimする
  autocmd BufWritePre * %s/\s\+$//e

  " 外部で変更があった際のmessageを出力しない(多分)
  autocmd FocusGained,BufEnter * :silent! !

  " bib -> bibtex
  autocmd BufNewFile,BufRead *.bib set filetype=bibtex
augroup END
