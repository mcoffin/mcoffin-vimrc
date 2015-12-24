if exists('b:did_ftplugin') | finish | endif

runtime! ftplugin/sh.vim
runtime! ftplugin/sh_*.vim ftplugin/sh/*.vim
runtime! syntax/sh.vim syntax/sh/*.vim

setlocal expandtab
setlocal tabstop=4
set shiftwidth=4
