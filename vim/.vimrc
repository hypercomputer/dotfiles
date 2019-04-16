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
hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=LightGrey ctermbg=DarkBlue
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
Plug 'airblade/vim-gitgutter'
Plug 'jremmen/vim-ripgrep'

call plug#end()

" set keyboard shortcuts for fzf "
nnoremap <leader>t :GFiles<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles?<CR>
nmap <leader><tab> <plug>(fzf-maps-n)

" reduce timeout to show gitgutter diff "
set updatetime=100

highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
