#!/bin/bash -e

mkdir -p ~/.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

cd ~/.vim
ln -s ~/dots/vim/vimrc vimrc
cd -

mkdir -p ~/tmp

pip install --user proselint
