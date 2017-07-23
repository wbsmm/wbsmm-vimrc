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
