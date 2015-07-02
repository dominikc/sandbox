set nocompatible
set number
set expandtab
set tabstop=2
set shiftwidth=2
set wildmode=full
set hlsearch
set lazyredraw
set nobackup
set noshowmode
set noswapfile
set nowrap
set nowritebackup

nnoremap <CR> :

" tpope/vim-sensible
if has('autocmd')
	filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
	syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set nrformats-=octal
set laststatus=2
set ruler
set showcmd
set wildmenu
set display+=lastline
set autoread
inoremap <C-U> <C-G>u<C-U>
" end 
