"NEOVIM
"

set inccommand=nosplit

"execute pathogen#infect()
"Helptags

filetype on
syntax on
colorscheme cobalt2
set guifont=Meslo\ LG\ M:h18
set colorcolumn=90
set lines=35 columns=150
set number
set showcmd
set laststatus=2
"set cpoptions+=$
set relativenumber
set ignorecase
set smartcase

set hidden
set history=100

let mapleader=" "

" Cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

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

" Cancel search with space space
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
"let NERDTreeMapActivateNode='t'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeFind<CR>
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

" Syntastic
"let g:syntastic_javascript_checkers = ['eslint']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Ale
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_lint_on_text_changed = 'never'

" vim-jsx
let g:jsx_ext_required = 0

" vim-emmet
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'js',
\  },
\}

" Prettier (not working)
" print semicolons
"let g:prettier#config#semi = 'true'
"let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#trailing_comma = 'none'

"let g:prettier#exec_cmd_async = 1
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

