call pathogen#infect()

set rtp+=$GOROOT/misc/vim

if has("syntax")
	syntax on
endif

filetype plugin indent on

" Automatically close if the only thing left is my NERD tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Automatically open NERDTree if no buffers
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
