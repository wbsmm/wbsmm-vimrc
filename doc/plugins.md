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
[syntastic配置](plugin_syntastic.md)

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
当前使用ag主要是其**支持忽略文件**(.gitignore和.ignore中的).
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

其中{pattern}要加引号,单双引号皆可 需要注意正则转义问题.实际上语言用的perl.

本地mac和公司机都安装了ag(the_silver_searcher)2.0.0,所以没有上面两个问题.
根据文档来即可,mac用brew,公司机编译安装.所以下面问题无关紧要



使用Ack存在的问题

1. 本机mac中 :Ack命令的警告perl: warning: Please check that your locale settings:
未解决

2. 处理ack版本小于2.0时Unknown option: s错误
 `let g:ack_default_options = " -H --nocolor --nogroup --column"`


# 主题
配置见colorschema.vim这个文件

[vimcolors](http://vimcolors.com/)

[peaksea](https://vim.sourceforge.io/scripts/script.php?script_id=3412) 
是[amix/vimrc](https://github.com/amix/vimrc)使用的主题.
很不错 默认CursorLine是下划线 自己调成了背景深灰色 

[jellybeans.vim](https://github.com/nanotech/jellybeans.vim)
 有更多的配置  搜索匹配词是下划线而非背景色 注释却是背景色(TODO没有) ...
[Dracula](https://draculatheme.com/vim/)
在mac默认终端(背景色白色)并不好使 背景色仍是白色.虽然iterm2不错 但我偶尔还是会用mac终端的

[tomasr/molokai](https://github.com/tomasr/molokai)
很老的主题 也还不错
 


# vim-markdown
[vim-markdown](https://github.com/plasticboy/vim-markdown)


# lightline
[lightline](https://github.com/itchyny/lightline.vim) 底部状态栏

内置了colorschema,不和vim的冲突
可以支持定制,

>See :h 'statusline' to check the statusline flags.
>Add a new component to g:lightline.component.
>Add the component name to g:lightline.active.left or g:lightline.active.right.

`:h g:lightline.component`可以看到内置的一些组件(简单的对statusline语法封装)配置那里`'component': {`

`:h g:lightline.component_function` 可以支持自定义函数,配置那里`'component_function': {`




