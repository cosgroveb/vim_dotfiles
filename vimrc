call pathogen#infect()
filetype plugin indent on
syntax on

" ===== Settings =====
" search
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set matchtime=3

" allow changing buffers without save
set hidden

" color settings
set background=dark
set t_Co=256

" text editing settings
set wrap
set textwidth=0
set autoindent
set tabstop=2
set shiftwidth=2
set sts=2
set expandtab
set ruler

" shut the hell up, vim
set visualbell

" status line
set laststatus=2

set number
set encoding=utf-8

" ===== Shortcuts =====

" navigation shortcuts
"   splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"   alternate files
map <leader>aa :A<CR>
map <leader>as :AS<CR>
map <leader>av :AV<CR>

" command-line shortcuts
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" insert new lines without going into insert mode
nmap t o<ESC>k
nmap T O<ESC>j

" ===== Plugins =====

