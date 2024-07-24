set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on

set number relativenumber
set shiftwidth=2
set tabstop=2
set nowrap
set ignorecase
set smartcase
set hlsearch
set history=10000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx
set scroll=20
set scrolloff=20

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin()

"List of my plugins
Plug 'tpope/vim-sensible'
Plug 'dylanaraps/wal.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'preservim/nerdtree'

call plug#end()

colorscheme wal
