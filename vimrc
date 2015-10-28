" ===== Plugins ======
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'benmills/vimux'
Plug 'braintreeps/bufexplorer'
Plug 'pgr0ss/vimux-ruby-test'
Plug 'tomtom/tcomment_vim'
Plug 'withgod/vim-sourcepawn.git'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on
syntax on
au BufNewFile,BufRead *.pp setf ruby

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
colorscheme vibrantink

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
set backupdir=/tmp

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

" reload the vimrc file
nmap <silent> <leader>vis :so $MYVIMRC<CR>

" retag
map <silent> <LocalLeader>rt :!/usr/local/Cellar/ctags/5.8_1/bin/ctags -R --exclude=".git\|.svn\|log\|tmp\|db\|pkg" --extra=+f --langmap=Lisp:+.clj<CR>

" ===== Plugin Settings =====
" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['.DS_Store']

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" CommandT
let g:CommandTMaxHeight = 15
let g:CommandTMatchWindowAtTop = 1
let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']

" vimux

let g:VimuxUseNearestPane = 1

" ====== Plugin Shortcuts ======
" NERDTree
map <leader>nt :NERDTreeToggle<Enter>
map <leader>nt :NERDTreeToggle<Enter>
map <leader>nf :NERDTreeFind<Enter>

map <silent> <leader>ff :CtrlP<CR>
" CommandT
"
"map <silent> <leader>fb :CommandTBuffer<CR>
"map <silent> <leader>fr :CommandTFlush<CR>

" Vimux
map <silent> <LocalLeader>rl :wa<CR> :RunLastVimTmuxCommand<CR>
map <silent> <LocalLeader>ri :wa<CR> :InspectVimTmuxRunner<CR>
map <silent> <LocalLeader>rx :wa<CR> :CloseVimTmuxPanes<CR>
map <silent> <LocalLeader>vp :PromptVimTmuxCommand<CR>
vmap <silent> <LocalLeader>vs "vy :call RunVimTmuxCommand(@v)<CR>
map <silent> <LocalLeader>rf :wa<CR> :RunRubyFocusedTest<CR>
map <silent> <LocalLeader>rc :wa<CR> :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rb :wa<CR> :RunAllRubyTests<CR>

" TComment
map <silent> <LocalLeader>cc :TComment<CR>
map <silent> <LocalLeader>uc :TComment<CR>

" ====== Whitespace management ======
" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
function! Trim()
    %s/\s*$//
endfunction
command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>

" Mappings for eclim/java
"
nnoremap <buffer> <leader>i :JavaImport<cr>
nnoremap <buffer> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <buffer> <cr> :JavaSearchContext<cr>
nnoremap <buffer> <leader>jj :JavaCorrect<cr>
let g:EclimBrowser = 'chrome'


