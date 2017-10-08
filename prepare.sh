#!/usr/bin/env bash

echo "it will check dependencies now. if there are error or warning please see md documents in doc directory."

# check user home
echo "home directory is $HOME"
echo "user is $USER"

# check git install
has_git=$(command -v git )
if [ ! "$has_git" ]; then
    echo  "must have git installed"
    exit 1
else
    echo  "check git installed ok"
fi

# check vim install
has_vim=$(command -v vim )
if [ ! "$has_vim" ]; then
    echo  "must have vim installed"
    exit 1
else
    echo  "check vim installed ok"
fi



# check vim version
vim_version=$(vim --version | head -1 | grep -o '[0-9]\.[0-9]')
if [  $(echo "$vim_version >= 8.0" | bc -l) -ne 1 ]; then
    echo "vim version must be at least 8.0"
    exit 1
else
    echo  "check vim version ok "
fi


# lua support for neocomplete plugin
has_lua_support=$(vim --version | grep  +lua)
if [ ! "$has_lua_support" ]; then
    echo "vim without lua support cannot use some plugin"
    exit 1
else
    echo  "check vim with lua support ok"
fi




# check plugins need

# check Vundle plugin
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "$HOME/.vim/bundle/Vundle.vim is not exist. will auto install vundle"
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "check vim vundle plugin ok"
fi

# check ack or ag install
has_ack_tool=$(command -v ack)
has_ag_tool=$(command -v ag)
if [ ! "$has_ack_tool" ] && [ ! "$has_ag_tool" ]; then
    echo "warning: ack and ag is not found. vim ack plugin cannot work"
else
    echo  "check ack or ag tool installed ok"
fi

# check tmux install
has_tmux=$(command -v tmux)
if [ ! "$has_tmux" ]; then
    echo "tmux not installed.please intall latest tmux"
else
    echo  "check tmux installed ok"
fi

# check tmux version
tmux_version=$(tmux -V | grep -o '[0-9]\.[0-9]')
if [  $(echo "$tmux_version >= 2.0" | bc -l) -ne 1 ]; then
    echo "warning tmux version must be at least 2.0. your tmux version is $tmux_version"
else
    echo  "check tmux version ok "
fi