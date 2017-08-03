# 插件说明

# 前言

1. vim版本至少要7.4.1578+(youcompleteme插件需要),可以编译安装vim

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

使用Vundle下载后,还需要编译安装.详细见此[plugin_ycm.md](plugin_ycm.md)

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


1. 本机mac中 :Ack命令的警告perl: warning: Please check that your locale settings:
未解决

2. 处理ack版本小于2.0时Unknown option: s错误
 `let g:ack_default_options = " -H --nocolor --nogroup --column"`

PS:本地mac和公司机都安装了ag(the_silver_searcher)2.0.0,所以没有上面两个问题.
根据文档来即可,mac用brew,公司机编译安装.

# peaksea
[peaksea](https://github.com/vim-scripts/peaksea) 主题
本想用Dracula的 但是在mac默认终端(背景色白色)并不好使 背景色未变

# vim-markdown
[vim-markdown](https://github.com/plasticboy/vim-markdown)


# lightline
[lightline](https://github.com/itchyny/lightline.vim) 底部状态栏



