set nocompatible
filetype off


set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set relativenumber
set undofile
set undodir=$HOME/.vim/undofiles
set undolevels=5000
set colorcolumn=80

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=tab:▸\ ,eol:¬

" Enable syntax highlighting
syntax enable

nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap : ;

nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %

au FocusLost * :wa

let mapleader = ","

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <leader><space> :noh<cr>
nnoremap <leader>v V`]
nnoremap <leader>e <C-w><C-v><C-w>l:e $HOME/.vimrc<cr>
nnoremap <leader>r :so $HOME/.vimrc<cr>
nnoremap <leader>q :q<cr>:so $HOME/.vimrc<cr>
inoremap jj <ESC>
inoremap JJ <ESC>
inoremap <C-\> <C-o>:left 0<Cr><BS>



" VUNDLE SETUP
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins to install go here
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-characterize'
Plugin 'ctrlpvim/ctrlp.vim'
" Mappings for ctrlp
let g:ctrlp_show_hidden = 1

Plugin 'bspammer/InsertChar'
" Mappings for InsertChar, <NUL> == Control-Space
nnoremap <NUL> :<C-U>call InsertChar#insert(v:count1)<CR>
nnoremap <SPACE> :<C-U>call InsertChar#insertAfter(v:count1)<CR>

Plugin 'mbbill/undotree'
" Settings for undotree
nnoremap <F5> :UndotreeToggle<CR>
let g:undotree_SplitWidth=35
let g:undotree_SetFocusWhenToggle=1
let g:undotree_WindowLayout=1
let g:undotree_HighlightChangedText = 0
"
call vundle#end()
filetype plugin indent on
