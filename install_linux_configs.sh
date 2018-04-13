#!/usr/bin/env bash

echo 'copy .ctags to ~/'
mv ~/.ctags ~/.ctags.bak
cp linux_configs/.ctags ~/.ctags

echo 'copy .tmux.conf to ~/'
mv ~/.tmux.conf ~/.tmux.conf.bak
cp linux_configs/.tmux.conf ~/.tmux.conf


echo 'copy svndiffwrap.sh to /usr/local/bin/'
cp linux_configs/svndiffwrap.sh  /usr/local/bin/svndiffwrap.sh




