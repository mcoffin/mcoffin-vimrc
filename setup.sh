#!/usr/bin/env bash

set -e

echo_err() {
	echo "$@" >&2
}

repo_path=$(realpath `dirname $0`)

if [ ! -e $repo_path/vimrc ]; then
	echo_err "Couldn't find the repo path. Try running from inside the repository?"
	exit 1
fi

if [ -e ~/.vimrc ]; then
	echo_err "WARN: backing up old vimrc as .vimrc.old!"
	mv ~/.vimrc ~/.vimrc.old
fi

set -x
ln -s $repo_path/vimrc ~/.vimrc
