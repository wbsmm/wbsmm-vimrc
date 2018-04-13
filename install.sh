#!/usr/bin/env bash

OP=$1

if  [ "$OP" != 'ycm' ]  && [ "$OP" != 'ycm_replacement' ]; then
    echo "need type param. There are two types:  ycm, ycm_replacement . Please choose one"
    exit 0
fi

if [ "$2" != '--not_check_env' ]; then
    ./check_env.sh
    RES=$?
else
    RES=0
fi

if [ $RES -ne 0 ]; then
    echo "Here are some warnings.Suggest you solve these. Use '--not_check_env' to skip"
    exit 1
fi

mv ~/.vimrc ~/.vimrc.bak
cp "./vimrcs/$OP.vimrc" ~/.vimrc

has_gvim=$(command -v gvim)
if [ ! "$has_gvim" ]; then
    echo "copy .gvimrc"
    mv ~/.gvimrc ~/.gvimrc.bak
    cp linux_configs/.gvimrc ~/.gvimrc
fi

echo -e "\n Successfully installed. \n"