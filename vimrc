" Load vim 8.0 defaults
runtime! defaults.vim

" Setup vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

filetype plugin indent on

set rtp+=$GOROOT/misc/vim

if has("syntax")
	syntax on
endif
