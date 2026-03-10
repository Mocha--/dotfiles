" ####################################
" Mooocha's vimrc
" ####################################

" ------------------------------------
" Plugins
" ------------------------------------
call plug#begin('~/.config/nvim/plugged')

" ----------
" make it like IDE
" ----------

"Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'marijnh/tern_for_vim'
"Plug 'valloric/youcompleteme'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'haya14busa/incsearch.vim'
"Plug 'easymotion/vim-easymotion'
"Plug 'tpope/vim-fugitive'
"Plug 'sirver/ultisnips'
"Plug 'airblade/vim-gitgutter'

" ------------
"  javascript
" ------------
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'

" ------------
"  css
" ------------
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'

" ------------
" json
" ------------
Plug 'elzr/vim-json'

" ------------
" html
" ------------
Plug 'othree/html5.vim'
"Plug 'valloric/matchtagalways'
Plug 'alvan/vim-closetag'

" ------------
" typescript
" ------------
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats.vim'

" ------------
" themes
" ------------
Plug 'morhetz/gruvbox'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mhartington/oceanic-next'
Plug 'maxst/flatcolor'
Plug 'KeitaNakamura/neodark.vim'
Plug 'rhysd/vim-color-spring-night'
Plug 'altercation/vim-colors-solarized'

call plug#end()


" ***********************************
" below are configurations
" ***********************************


" ***********************************
" Gerenal Config
" ***********************************

syntax on
set noshowmode
set number
set cursorline
set ttyfast

set expandtab
set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

set hidden
set showmatch
set lazyredraw

set incsearch
set hlsearch

set ignorecase
set smartcase
set scrolloff=8
set backupcopy=yes

" ***********************************
" key maps
" ***********************************

" exit INSERT mode to NORMAL mode
inoremap jk <ESC>

" jump down and up
nmap J 10j
vmap J 10j
nmap K 10k
vmap K 10k
nmap W 5w
nmap B 5b
nmap E 5e

" ***********************************
" color scheme
" ***********************************
set termguicolors
set background=dark

"au ColorScheme * hi Normal ctermbg=none guibg=none "transparent background
"colorscheme hybrid_material
"colorscheme OceanicNext
"let g:neodark#terminal_transparent = 1
"colorscheme neodark
"colorscheme spring-night
"colorscheme solarized

" gruvbox config
let g:gruvbox_italic = 1
let g:gruvbox_bold = 1
let g:gruvbox_italicize_strings = 0
colorscheme gruvbox

" ***********************************
" html5
" ***********************************
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

" ***********************************
" vim jsx
" ***********************************
let g:jsx_ext_required = 0

" ***********************************
" Nerdtree
" ***********************************
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI=1
let g:nerdtree_tabs_open_on_console_startup=1
nmap <c-\> <plug>NERDTreeTabsToggle<CR>
nmap <tab> <plug>NERDTreeFocusToggle<CR>

" ***********************************
" Syntastic
" ***********************************
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs=1

" ***********************************
" youcompleteme
" ***********************************
set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0

" ************************************
" vim json
" ************************************
let g:vim_json_syntax_conceal = 0

" ************************************
" javascript libraries syntax
" ************************************
"let g:used_javascript_libs = 'react,angular'

" ************************************
" air line
" ************************************
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" switch to next tab
nmap L :bnext<CR>
" switch to previous tab
nmap H :bprevious<CR>
nmap <c-t> :enew<CR>
nmap <c-w> :bp <BAR> bd #<CR>

" ************************************
" nerdcommenter
" ************************************
map <c-m> <plug>NERDCommenterToggle

" ************************************
" rainbow parentheses
" ************************************
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_max = 16

" ************************************
" easy motion
" ************************************
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
