" ================================================================
" -----------------------      .VIMRC      -----------------------
" ================================================================
"
" Author:     Andrei Brumaru
" Source:     https://github.com/AndreiBru/vimrc
" Version:    1.0
"


" =============== GLOBAL CONFIG ===============
" ---------------------------------------------
"

" MINPAC
" -------

" Init
packadd minpac
call minpac#init()

" Plugins (start)
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('scrooloose/nerdtree')
call minpac#add('ervandew/supertab')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('peitalin/vim-jsx-typescript')
call minpac#add('mattn/emmet-vim')
call minpac#add('w0rp/ale')
call minpac#add('prettier/vim-prettier')
call minpac#add('jeetsukumaran/vim-buffergator')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-fugitive')
call minpac#add('chrisbra/Colorizer')

" Plugins (opt)
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Colorschemes
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('morhetz/gruvbox')
call minpac#add('chriskempson/base16-vim')



" NEOVIM
" -------

" Highlight matched text while searching
if exists('&inccommand')
  set inccommand=split
endif



" GENERAL
" --------

" Map Leader Key
let mapleader=" "

" Basic Defaults
set nocompatible
filetype plugin on
filetype on
syntax on

" Show line numbers
set number
set showcmd

" Always show the status bar
set laststatus=2
set relativenumber

" Case insensitive search
set ignorecase
set smartcase

" Set a high history number
set history=1000

" Allow cursor to enter 'invalid' areas
set virtualedit=all

" Keep a 5 line padding at the top/bottom of the screen when scrolling
set scrolloff=5

" Allow hidden buffers to exist
set hidden

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

" Fuzzy Find, Wildmenu
set path+=**
set wildmenu

" GUI Font (when running inside MacVim / VimR)
set guifont=Meslo\ LG\ M:h18

" Change how cursors look in different modes - Normal / Insert (for iTerm)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"



" COLORS
" -------

" Use true colors if available (bypass terminal defaults)
if (has("termguicolors"))
 set termguicolors
endif

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Colorscheme
colorscheme solarized8_dark
let g:airline_theme='solarized'

" Colorscheme Shortcuts
nnoremap <leader>1 :colorscheme solarized8_dark<CR>:AirlineTheme solarized<CR>
nnoremap <leader>2 :colorscheme solarized8_light<CR>:AirlineTheme solarized<CR>
nnoremap <leader>3 :colorscheme OceanicNext<CR>:AirlineTheme zenburn<CR>
nnoremap <leader>4 :colorscheme MintMellow<CR>:AirlineTheme bubblegum<CR>
nnoremap <leader>5 :colorscheme gruvbox<CR>:AirlineTheme gruvbox<CR>
nnoremap <leader>6 :colorscheme base16-default-dark<CR>:AirlineTheme base16<CR>
nnoremap <leader>7 :colorscheme cobalt2<CR>:AirlineTheme cobalt2<CR>






" =============== PLUGIN CONFIG ===============
" ---------------------------------------------
"

" CtrlP
" ------

set wildignore+=*/node_modules/*,*.log
let g:ctrlp_custom_ignore = '\v[\/]\.(git)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'



" NERDCommenter
" --------------

let g:NERDSpaceDelims = 1



" NERDTree
" ---------

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\node_modules$', '\.git$']
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Highlight by file type
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('json', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')



" Git Gutter
" -----------

set signcolumn=yes
let g:gitgutter_realtime=1
let g:gitgutter_eager=1
set updatetime=250



" Ale
" ----

let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_lint_on_text_changed = 'never'



" vim-jsx
" --------

let g:jsx_ext_required = 0



" vim-emmet
" ----------

let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'js',
\  },
\}



" vim-airline
" ------------

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''



" vim-prettier
" -------------

let g:prettier#config#semi = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#single_quote = 'false'
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync






" ============= Personal Mappings =============
" ---------------------------------------------


" Read / Write session
nmap <leader>ww :mksession! ~/.vim/session-work.vim<CR>
nmap <leader>rr :source ~/.vim/session-work.vim<CR>

" Cancel search highlight
nnoremap <Leader><space> :noh<cr>

" Reload .vimrc
map \s :source ~/.vimrc<CR>

" Toggle whitespace characters display
set listchars=tab:▸\ ,eol:¬,space:.
nmap \l :set list!<CR>

" Show syntax highlighting groups for word under cursor
nmap <leader>ss :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" First, Last, Previous, Next -> Buffer
nnoremap [B :bfirst<CR>
nnoremap ]B :blast<CR>
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

