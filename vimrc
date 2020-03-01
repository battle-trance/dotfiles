
set number

set expandtab
set smartindent
set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

set guioptions -=T
set guioptions -=m

set guifont=Consolas\ 14

set mouse=a
set clipboard=unnamedplus

color badwolf

map <F8> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL % -o %< <CR>
map <F9> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL % -o %< -g -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG <CR>
map <F5> :!./%< <CR>


au BufNewFile *.cc 0r ~/tpl.cpp 


set nocompatible              
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
call vundle#end()
filetype plugin indent on
