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
"
call vundle#end()
filetype plugin indent on
