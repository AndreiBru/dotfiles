execute pathogen#infect()
Helptags

filetype on
syntax on
colorscheme cobalt2
set guifont=Meslo\ LG\ M:h18
set colorcolumn=90
set lines=35 columns=150
set number
set showcmd
set laststatus=2

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

" Reload .vimrc with '\s'
map \s :source ~/.vimrc<CR>

" CtrlP mappings
set wildignore+=*/node_modules/*,*.log
let g:ctrlp_custom_ignore = '\v[\/]\.(git)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" NerdCommenter
filetype plugin on

" Lightline
set noshowmode

" NERDtree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\node_modules$', '\.git$']
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('json', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')

" Git Gutter
set signcolumn=yes
let g:gitgutter_realtime=1
let g:gitgutter_eager=1
set updatetime=250
