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
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%-40f\                    " relative path
set statusline+=%=                        " seperate between right- and left-aligned
set statusline+=%1*%y%*%*\                " file type
set statusline+=%10(L(%l/%L)%)\           " line
set statusline+=%2(C(%v/125)%)\           " column
set statusline+=%P                        " percentage of file

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

" ===== Plugin Settings =====
" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['.DS_Store']

" ====== Plugin Shortcuts ======
" NERDTree
map <leader>nt :NERDTreeToggle<Enter>
map <leader>nt :NERDTreeToggle<Enter>
map <leader>nf :NERDTreeFind<Enter>
