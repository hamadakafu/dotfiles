set noswapfile
set nobackup
set nowritebackup
set encoding=UTF-8

set number

set termguicolors

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

set clipboard=unnamed

set hls

set mouse=a

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

set completeopt=menuone

" 外部でファイル変更があった際に自動で読みに行く
set autoread
autocmd FocusGained,BufEnter * :silent! !

" whitespaceをtrimする
autocmd BufWritePre * %s/\s\+$//e

" 前回開いた位置を覚える
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" julia
autocmd BufRead,BufNewFile *.jl set filetype=julia

" directoryが存在しないときに自動で作成する
augroup Mkdir
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END

