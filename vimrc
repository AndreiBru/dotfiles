execute pathogen#infect()

filetype on
syntax on
colorscheme cobalt2
set guifont=Meslo\ LG\ M:h18
set colorcolumn=90
set lines=35 columns=150
set number

set hidden
set history=100

let mapleader=" "

" Dealing with tabs
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent


" Highlight search
set hlsearch
set incsearch

" Delete whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Cancel search with ESC
nnoremap <Leader><space> :noh<cr>

map \s :source ~/.vimrc<CR>
