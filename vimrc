" Load vim 8.0 defaults
runtime! defaults.vim

" Setup vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/neovimhaskell/haskell-vim.git'
Plugin 'git://github.com/cespare/vim-toml.git'
Plugin 'git://github.com/KoffeinFlummi/vim-sqf.git'
Plugin 'git://github.com/hashivim/vim-terraform.git'
Plugin 'git://github.com/vmchale/dhall-vim.git'
Plugin 'https://tildegit.org/sloum/gemini-vim-syntax.git'
Plugin 'git://github.com/jparise/vim-graphql.git'
Bundle 'git://github.com/daylerees/colour-schemes.git', { "rtp": "vim/" }
call vundle#end()
filetype on

filetype plugin indent on

set rtp+=$GOROOT/misc/vim

if has("syntax")
	syntax on
endif

command! RetabIndents call RetabIndents()

func! RetabIndents()
	let saved_view = winsaveview()
	execute '%s@^\( \{'.&ts.'}\)\+@\=repeat("\t", len(submatch(0))/'.&ts.')@'
	call winrestview(saved_view)
endfunc
