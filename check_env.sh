#!/usr/bin/env bash

echo "my vimrc depend some external tool.this script will check these."

# check user home
echo "home directory is $HOME"
echo "user is $USER"

RET=0
# check vim install
has_vim=$(command -v vim )
if [ ! "$has_vim" ]; then
    echo  "WARN: vim not installed.you should install vim at begin"
    RET=1
fi



# check vim version
vim_version=$(vim --version | head -1 | grep -o '[0-9]\.[0-9]')
if [  $(echo "$vim_version >= 8.0" | bc -l) -ne 1 ]; then
    echo "WARN: vim version=$vim_version . Note that 'ycm' and 'ycm_replcament'vim version must be at least 8.0 because of ycm and ale plugin"
    RET=1
fi


# lua support for neocomplete plugin
has_lua_support=$(vim --version | grep  +lua)
if [ ! "$has_lua_support" ]; then
    echo "WARN: vim without lua support cannot neocomplete plugin"
    RET=1
fi



# check ack or ag install
has_ack_tool=$(command -v ack)
has_ag_tool=$(command -v ag)
if [ ! "$has_ack_tool" ] && [ ! "$has_ag_tool" ]; then
    echo "NOTICE: ack and ag is not found. ack plugin cannot work"
fi


# check flake8 autopep8 isort install
has_flake8=$(command -v flake8)
has_autopep8=$(command -v autopep8)
has_isort=$(command -v isort)
if [ ! "$has_flake8" ] || [ ! "$has_autopep8" ] || [ ! "$has_isort" ]; then
    echo "NOTICE: please check flake8 autopep8 isort tool. these are used for ale plugin for python"
fi


# check tmux install
has_tmux=$(command -v tmux)
if [ ! "$has_tmux" ]; then
    echo "NOTICE: tmux not installed."
fi

# check tmux version
tmux_version=$(tmux -V | grep -o '[0-9]\.[0-9]')
if [  $(echo "$tmux_version >= 2.0" | bc -l) -ne 1 ]; then
    echo "NOTICE: your tmux version is $tmux_version . tmux version must be at least 2.0 for my vimrc "
fi

exit $RET