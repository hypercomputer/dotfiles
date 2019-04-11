filetype plugin indent on
syntax on
color desert
set number
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
set nocp
set scrolloff=4
set ignorecase
set incsearch
set hlsearch
set smartcase
set autoindent
set backspace=indent,eol,start
set smarttab
set autoread
set ruler
set shiftwidth=2
set expandtab
set title

""Use <C-L> to clear the highlighting of :set hlsearch."
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

nmap 0 ^

"space as leader key"
let mapleader = "\<Space>"

"Open .vimrc file with space + v + r"
nmap <leader>vr :sp $MYVIMRC<cr>
"Source .vimrc file with space + s + o"
nmap <leader>so :source $MYVIMRC<cr>

"move up and down by visible lines if current line is wrapped"
nmap j gj
nmap k gk

" Plugins "
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ggreer/the_silver_searcher'

call plug#end()

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
