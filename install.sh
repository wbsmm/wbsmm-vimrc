#!/usr/bin/env bash

OP=$1

if [ "$OP" != 'default' ] && [ "$OP" != 'without_ycm' ]; then
    echo "need op param: default or without_ycm"
    exit 0
fi

./prepare.sh

RES=$?

if [ $RES -ne 0 ]; then
    echo "prepare failed. cannot connot continue"
    exit 1
else
    echo -e "\n begin install................."
fi

echo 'copy .ctags to ~/'
cp configfiles/.ctags ~/.ctags

echo 'copy .tmux.conf to ~/'
cp configfiles/.tmux.conf ~/.tmux.conf

echo 'copy .vimrc and .myvimrcs to ~/'
if [ $OP = 'default' ];then
    cp configfiles/default.vimrc ~/.vimrc
elif [ $OP = 'without_ycm' ]; then
    cp configfiles/without_ycm.vimrc ~/.vimrc
fi

mkdir -p ~/.myvimrcs
cp .myvimrcs/* ~/.myvimrcs

echo "copy .myvimruntime"
mkdir -p ~/.myvimruntime/
cp  -r .myvimruntime/*  ~/.myvimruntime/

echo 'copy svndiffwrap.sh to /usr/local/bin/'
cp configfiles/svndiffwrap.sh  /usr/local/bin/svndiffwrap.sh

echo "the follow are some useful config can add to your bashrc"
cat configfiles/.bashrc

has_gvim=$(command -v gvim)
if [ ! "$has_gvim" ]; then
    echo "copy .gvimrc"
    cp configfiles/.gvimrc ~/.gvimrc
else
    echo "no gvim installed"
fi

echo "install complete. use :PluginInstall to install vim plugin. and YCM plugin need extra config"