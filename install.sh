#!/usr/bin/env bash

echo 'copy config files'
mv ~/.ctags ~/.ctags.bak
mv ~/.vimrc ~/.vimrc.bak
cp .ctags ~/.ctags
cp .vimrc ~/.vimrc
cp -r vimrcs/ ~/vimrcs

echo 'need some unix tools to install. see plugins.md'
