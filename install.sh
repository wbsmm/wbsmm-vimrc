#!/usr/bin/env bash



echo 'copy .ctags to ~/'
cp configfiles/.ctags ~/.ctags

echo 'copy .tmux.conf to ~/'
cp configfiles/.tmux.conf ~/.tmux.conf

echo 'copy .vimrc and .myvimrcs to ~/'
cp configfiles/.vimrc ~/.vimrc
mkdir -p ~/.myvimrcs
cp .myvimrcs/* ~/.myvimrcs

echo "copy .myvimruntime"
mkdir -p ~/.myvimruntime/
cp  -r .myvimruntime/*  ~/.myvimruntime/

echo 'copy svndiffwrap.sh to /usr/local/bin/'
cp configfiles/svndiffwrap.sh  /usr/local/bin/svndiffwrap.sh

echo 'version tmux 2.5; vim 8'
echo 'git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
echo 'need some unix tools to install. see plugins.md'
echo 'maybe need add follow content to .bashrc'
cat configfiles/.bashrc
