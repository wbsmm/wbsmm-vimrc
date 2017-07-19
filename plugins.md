# 插件说明

# 前言

1. vim版本至少要7.4(youcompleteme插件需要)

2. `:h [插件名]`可以获取帮助文档 如`:h Vundle`;

3. 关于插件的配置一是vim配置,见vimrc,一般都是些快捷键配置.还有就是某些插件可能需要外部配置,在这里会说明.

# Vundle
[Vundle](https://github.com/VundleVim/Vundle.vim) 用于插件管理
`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
`cp ./.vimrc ~/.vimrc`
 安装完环境后使用`:PluginInstall`安装插件
 
PS: `:h 插件名`可查看文档如:

# NERDTree
[NERDTree](https://github.com/scrooloose/nerdtree) 一个目录窗口 浏览文件
另外还装了Xuyuanp/nerdtree-git-plugin 用于显示文件git状态


`vim .`
`:NERDTree [<start-directory> | <bookmark>] ` 不用这个
`:NERDTreeToggle [<start-directory> | <bookmark>]` 不存在就新建
`:NERDTreeFocus `
`:NERDTreeClose `
`:NERDTreeFind` 查找当前文件在目录树中的位置
`:NERDTreeCWD `改变根目录

进入 NERDTree后
`o O x X`打开关闭目录树
`go``t``T`打开新建文件标签
`P p`根父目录
`R r`刷新目录
`e`编辑目录

# MRU
[MRU](https://github.com/vim-scripts/mru.vim) M-most R-recent U-use 最近使用文件窗口
 
`:MRU` 
 
# syntastic
[syntastic](https://github.com/vim-syntastic/syntastic) 语法检查

# YouCompleteMe
[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) 代码补全

使用Vundle下载后,还需要编译安装.

1. 准备编译环境 cmake 和python
mac下使用`brew install cmake`就行
ubuntu `sudo apt-get install build-essential cmake` `sudo apt-get install python-dev python3-dev`

2. 进行编译安装 
`cd ~/.vim/bundle/YouCompleteMe`
`./install.py `后可加参数,添加语义支持.每个语义的添加都需要先安装一些外部工具.

默认没有php的语义,但其内置了neocomplcache.所以可用tags.

安装ctags工具`brew install ctags` ` apt-get install exuberant-ctags` 
在工程目录下`ctags -R` 另外vim的目录也在工程目录即可

phptags生成
`~/.ctags`中

```
--regex-php=/^[ \t]*[(private|public|static)( \t)]*function[ \t]+([A-Za-z0-9_]+)[ \t]*\(/\1/f, function, functions/
--regex-php=/^[ \t]*[(private|public|static)]+[ \t]+\$([A-Za-z0-9_]+)[ \t]*/\1/p, property, properties/
--regex-php=/^[ \t]*(const)[ \t]+([A-Za-z0-9_]+)[ \t]*/\2/d, const, constants/
```
bashrc中
`alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php'`

PS:c c++
```
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q .
ctags -R --c-kinds=+px --c++-kinds=+px --fields=+iafksS --extra=+qf /usr/include/*
```

`ctrl+]` 跳转到函数定义处，用 `ctrl+t` 或者`ctrl+o` 跳回


# tagbar
[tagbar](https://github.com/majutsushi/tagbar) idea的structure eclipse的outline
基于tags实现. 语言支持见[tagbar wiki](https://github.com/majutsushi/tagbar/wiki)

php在github有phpctags工具和[vim-php/tagbar-phpctags.vim](https://github.com/vim-php/tagbar-phpctags.vim)插件.
但当前并未使用

# ctrlp
[ctrlp](https://github.com/kien/ctrlp.vim) 一个目录窗口 查找文件 
用NERD展开所有目录比较慢,所以无法简单的使用vim命令查找

`:CtrlP [目录]`找文件 
`:CtrlPBuffer`
`:CtrlPMixed`
`:help ctrlp-mappings`

# ack.vim
[ack.vim](https://github.com/mileszs/ack.vim) idea的find-in-path功能
基于unix的[ack](https://beyondgrep.com/documentation/)工具,也可以使用在ack基础上[ag(the_silver_searcher)](https://github.com/ggreer/the_silver_searcher)工具
当前使用ag主要是其支持忽略文件(.gitignore和.ignore中的).
默认的grep工具`grep -H -r 'what_you_search' * | less`明显感觉不方便
`brew install the_silver_searcher`
`apt-get install silversearcher-ag`

`:Ack [options] {pattern} [{directories}]`
`:help ack`
?    a quick summary of these keys, repeat to close
o    to open (same as Enter)
t    to open in new tab
T    to open in new tab, keeping focus on the results
go  to preview file, open but maintain focus on ack.vim results
q    to close the quickfix window

basrc中添加
 解决vim中:Ack命令的警告perl: warning: Please check that your locale settings:
`export LC_ALL=C` 
git报错`git_prompt_info:5: character not in range`


# peaksea
[peaksea](https://github.com/vim-scripts/peaksea) 主题
本想用Dracula的 但是在mac默认终端(背景色白色)并不好使 背景色未变

# vim-markdown
[vim-markdown](https://github.com/plasticboy/vim-markdown)


# lightline
[lightline](https://github.com/itchyny/lightline.vim) 底部状态栏

