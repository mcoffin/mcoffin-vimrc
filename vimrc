" Load vim 8.0 defaults
runtime! defaults.vim

" Setup vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/neovimhaskell/haskell-vim.git'
Plugin 'git://github.com/cespare/vim-toml.git'
call vundle#end()
filetype on

filetype plugin indent on

set rtp+=$GOROOT/misc/vim

if has("syntax")
	syntax on
endif
