# 服务端开发环境配置

## 说明

    这仓库其实是用终端ssh连公司服务器的工作环境配置,vim作为编辑器是最重要的.所以配置上可能忽略其它环境的一些问题.
我感觉能够本地开发的项目,还是用IDE更好 ^_^.

具体环境:
服务器是 debian7.1. 版本太老,装不上Youcompleteme插件...
然后我本机OSX EI Captian和 阿里云 ubuntu14.04. 也会对应安装.但是由于一般不用,所以可能有隐藏问题.

现阶段是为php开发服务;  
  
希望对你的环境搭建有所帮助.

PS:其实主要就是这几样工具: ssh相关,终端,会话工具,编辑器
    
## 编辑器 vim
    之前直接用的[amix/vimrc](https://github.com/amix/vimrc)Awosome版本.但是感觉自己不需要那么多配置,而且始终记不住一些功能.
索性在其basic[amix/vimrc basic](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim)基础上,自己一个个单独安装插件.
已装的插件见[plugin.md](doc/plugin.md)

## 会话工具 tmux
我用的是[tmux](doc/tmux.md).就因为它比screen新.

## ssh
[ssh](doc/ssh.md)总结了一些关于ssh的简化操作

## 终端(iterm2+zsh)
其实mac自带终端加了zsh后也不错了.不过iterm2一些细节上做的更好[iterm2.md](doc/iterm2.md)

## 其它
1. 比较工具,[vimdiff](doc/diff.md).必须两窗口形式才好比较.


