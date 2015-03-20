set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

" Plugins
" Better status bar
Plugin 'Lokaltog/vim-powerline'
" Better file tree
Bundle 'scrooloose/nerdtree'
" Open file/buffer by name
Bundle 'ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" General
syntax on
set term=xterm-256color
set laststatus=2
set pastetoggle=<F12>
let mapleader=","
set encoding=utf-8
set fileencodings=utf-8
set ruler
set number
set history=500
set ttyfast

set autoindent
set smartindent

set textwidth=0
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab

set incsearch
set hlsearch
set ignorecase

set scrolloff=3
set sidescroll=1
set sidescrolloff=2

" re-read vimrc after writing it
autocmd BufWritePost *vimrc source $HOME/.vimrc

" clear search results
map <Leader><space> :noh<cr>

" semicolon for command mode
map ; :

" training wheels
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" nerdtree configs
let g:NERDTreeWinSize=40
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.git$', '\.class$']

nmap <Leader>n :NERDTreeToggle<cr>
nmap <Leader>nf :NERDTreeFind<cr>
nmap <Leader>nc :NERDTreeClose<cr>
