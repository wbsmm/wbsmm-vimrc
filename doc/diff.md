# vimdiff

## 说明
需要一个终端下的类似桌面的diff工具(**必须两窗口才好看**).
https://www.tecmint.com/best-linux-file-diff-tools-comparison/
介绍了包括图形界面与非图形界面的比较工具.
决定用vimdiff


## 安装
vim8 huge版本以包含

## svn支持
http://www.cnblogs.com/zhouej/archive/2012/02/09/2343756.html
由于参数形式原因,需要包裹下vimdiff的脚本 [svndiffwrap.sh](svndiffwrap.sh)
放到`/usr/local/bin`中

`svn diff --summarize`

`svn diff --diff-cmd svndiffwrap.sh [文件名]`
或者
`~/.subversion/config`中 diff-cmd设置

# 使用
对此[链接](https://www.ibm.com/developerworks/cn/linux/l-vimdiff/)中筛出对我来说重要的

`vimdiff  FILE_LEFT  FILE_RIGHT`
`vim -d  FILE_LEFT  FILE_RIGHT`


`:diffupdate` **刷新**


文件比较的最终目的之一就是合并，以消除差异。如果希望把一个差异点中当前文件的内容复制到另一个文件里，可以使用命令
`dp` （diff "put"）
如果希望把另一个文件的内容复制到当前行中，可以使用命令
`do` (diff "get"，之所以不用dg，是因为dg已经被另一个命令占用了)


上下文的展开和查看

`:set diffopt=context:3`
`zo` （folding open，之所以用z这个字母，是因为它看上去比较像折叠着的纸）
`zc` （folding close）