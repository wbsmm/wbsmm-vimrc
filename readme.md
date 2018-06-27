# 说明

## 仓库介绍

wbsmm-vimrc 不单单是我的vim配置,还包括我在linux上开发机的一些配置.在公司用ssh登录开发机写代码.
所以本vim配置是针对终端,我并不是vim党,且一直认为能够本地开发的项目,还是用IDE更好 T^T.

## 安装方式
    
```
cd ~
git clone https://github.com/wbsmm/wbsmm-vimrc.git
cd wbsmm-vimrc

# 插件往往依赖于外部命令,用下面脚本检查.
./check_env.sh

#  ycm ycm_replacement 根据需求选择 
./install.sh ycm_replacement
```

ycm和ycm_replacement区别在于自动补全插件,都需要VIM8(用了ale语法插件).
当前vim配置适用于PHP和python两种语言开发.
     
1. ycm
  带ycm插件(YouCompleteMe)的版本,在我的mac上安装.YCM在新的系统环境下(ubuntu16.04)还是好安装的
  插件安装完成后,需要按照[YCM](https://github.com/Valloric/YouCompleteMe)的文档进行进一步安装
  环境没问题的话
  ```
  cd ~/wbsmm-vimrc/plugins/ycm/YouCompleteMe
  ./install.py --clang-completer --java-completer
  ```
  
2. ycm_replacement
  公司是 debian7.1. 版本太老,装不上Youcompleteme插件...clang需要编译安装,但是开发机是vps,硬盘很小....
  所以只能将ycm替换掉.
  使用'Shougo/neocomplete.vim'和'shawncplus/phpcomplete.vim'作为ycm替代.
  其它的'ervandew/supertab'tab列表是从下往上选择的,功能重复;'vim-scripts/AutoComplPop'太老了,功能重复
  补全是基于ctags的相关概念,可参考这个[链接](https://github.com/shawncplus/phpcomplete.vim/blob/master/GUIDE.md)
    
由于某些插件依赖于外部库或者工具,所以建议`check_env.sh`里面的WARN至少都要解决掉.
PS:实际上这么久的vim使用,凡是需要主动敲命令的插件都用得很少

### 帮助文档
TODO

### 卸载
直接删除目录和文件即可
```
rm -rf ~/wbsmm-vimrc
rm ~/.vimrc
```

## clean 版本

  将仓库`cleanVersion`目录内的东西复制到主目录`~`即可
  这是一个清洁版本,除了一个peaksea主题插件外,没有其它任何插件,配置是在[amix](https://github.com/amix/vimrc)的basic上做了适用于自己的改动

    
# 其它终端开发用到的工具
    

## 会话工具 tmux
我用的是[tmux](note/tmux.md).就因为它比screen新.

## ssh
[ssh](note/ssh.md)总结了一些关于ssh的简化操作

## 终端(iterm2+zsh)
其实mac自带终端加了zsh后也不错了.不过iterm2一些细节上做的更好[iterm2.md](note/iterm2.md)

## 其它
1. 比较工具,[vimdiff](note/diff.md).必须两窗口形式才好比较.


