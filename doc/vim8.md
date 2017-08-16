# 安装vim8

## 说明
mac的话直接brew安装

ubuntu debian的话可先用apt-get 更新.
如果不行ppa的源来安装,但是在我阿里云(ubuntu14.04)上还是出了问题

## ppa源
**未成功,我自己用的编译安装**
更新的话使用PPA的源
`sudo add-apt-repository ppa:pkg-vim/vim-daily`
`sudo apt-get update`
`sudo apt-get install vim`
14.04 16.04 会有add-apt-repository: command not found
执行`apt-get install software-properties-common`




## 编译安装
**我实际用的**
https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
注意点:
1. vim要卸载干净,包括12.04的命令
`sudo apt-get remove vim vim-runtime gvim`
`sudo apt-get remove vim-tiny vim-common vim-gui-common vim-nox`
2. configure 变成一行(根据文档去除了Python3相关 禁用了gui) 
`./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config --disable-gui --enable-perlinterp=yes --enable-luainterp=yes  --enable-cscope --prefix=/usr`

### 遇到的问题

```
/etc/environment: line 5: LANGUAGE: command not found
dpkg: 处理软件包 install-info (--configure)时出错：
 子进程 已安装 post-installation 脚本 返回了错误号 127
正在处理用于 libc-bin (2.19-0ubuntu6.13) 的触发器 ...
在处理时有错误发生：
 install-info
```
原因: /etc/enviroment文件之前改过,先注掉即可


# macvim
就是mac下的gvim,brew安装即可
会使用vim的配置  自身的配置可在`~/.gvimrc`
`set lines=55 columns=170`

装这个的好处:
1. 可以直接拖到图标上打开文件;
2. 鼠标支持 如:鼠标点击切换标签 鼠标调整窗口大小
这些功能也可以`:set mouse=a`打开,但gvim可能有更多支持
3. 光标支持,终端下vim光标受终端的限制很大.gvim有更丰富的选项,比如改颜色什么的.
