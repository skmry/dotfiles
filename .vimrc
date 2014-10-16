filetype plugin on
filetype indent on

syntax on

set nu

set autoindent

set ts=2
set sw=2

set tabstop=4
set shiftwidth=4

set backspace=2

set showmatch

"set list
"set listchars=tab:>.,trail:-,eol:$,nbsp:%

set binary noeol

set whichwrap=b,s,h,l,<,>,[,] "行頭行末の左右移動で行をまたぐ

"display
"---------------------------
set number
set ruler
set cmdheight=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=4
set wildmenu
set showcmd

"syntax color
"-------------------
"set ignorecase
"set smartcase
"set wrapscan
"set hlsearch

"edit
"----------------------------
set autoindent
set cindent
set showmatch
"set backspace=indent,eof,start

"tab
"----------------------------
set tabstop=2
set expandtab
set smarttab
"set shifwidth=2
set shiftround
set nowrap

" Vundle を初期化
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" github にあるプラグイン
" Vundle 自身も Vundle で管理
Bundle 'gmarik/vundle'
filetype plugin indent on
Bundle 'Yggdroot/indentLine'

" indentLine
let g:indentLine_enable_on_vim_startup=1
set list listchars=tab:\¦\ 
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '' "use ¦, ┆ or │ 