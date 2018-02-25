call plug#begin()
Plug 'w0rp/ale'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nmap <C-s>    :Ack! "\b<cword>\b" <CR>

set nocompatible
set noswapfile
syntax on
colorscheme tomorrow-night

" menu bottom
set wildmenu
set wildmode=full

set title
set number
set cursorline

set ruler
set scrolloff=3

set visualbell
set noerrorbells
set backspace=indent,eol,start
set hidden

set nowrap
set linebreak

" Formatting / Typography
set smarttab
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wrap
set ffs=unix,dos,mac
set encoding=utf-8

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Show invisible
set list listchars=tab:»\ ,trail:·
highlight NonText guifg=#ffffff
highlight SpecialKey guifg=#ffffff

" Show overbroad
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

" Show overbroad for solarized
set colorcolumn=80

" Shortcuts
map <F1> :NERDTreeToggle<CR>
map <C-P> :FZF<CR>

" display vim-airline without split the screen
set laststatus=2
set noshowmode
let g:lightline = {
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component': {
\   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
\ },
\ 'component_visible_condition': {
\   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
\ }
\ }
