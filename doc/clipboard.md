# clipboard剪贴板说明

# 机器自身管理程序.

mac 下是 `pbcopy` `pbpaste`

X window下的linux可用 `xclip`,给大部分应用程序提供ctrl+c ctrl+v支持. 

无桌面的(终端下的)linux可用`gpm`,提供鼠标支持(mac终端似乎默认就有)

vim中自身有各种寄存器

tmux也是有自己内部的buffer

# iterm2 vim tmux 间复制粘贴

1. 无论是不是用tmux
command+V 也可以从本地粘贴到远程上. 但是注意这相当于逐个键盘字符输入. vim要么最好在paste模式

2. 不使用tmux时

即便ssh等到远程机,直接鼠标选中即可复制内容到本地机器的剪贴板. command+V好使

3. 使用tmux

由于tmux自身有剪贴板,开启鼠标功能,鼠标选中的复制到tmux的buff里了.需要传递一下.
mac本地的话可以直接`tmux save-buffer - | pbcopy`
如果是在远程机器上的tmux,原理也是一样`tmux save-buffer - | ssh local pbcopy`见[tmux.md](tmux.md)
注意ssh连接有失效的可能.


直接把tmux的buffer的内容弄到vim里面???????

终端下 缺少DISPLAY无法访问xclip. 所以无法通过远程主机的剪贴板中转.使用`ssh -X`参数感觉也不是很好... 
总之通过vim的剪贴板寄存器是不好使的.


## 解决
使用iterm2 的剪贴复制.首先分析一下原因,默认情况下iterm2终端里就可以用鼠标进行复制,也就是前面的没使用tmux情况.

但由于tmux开启鼠标功能(主要是为了调整大小),所以默认的鼠标复制变成tmux的了.显然不好.

两种解决方法:
1. iterm2 菜单-Edit-copy mode  然后发现光标变了, 跟vim一样 v选中 y复制. 然后可用command+V 粘贴
2. 关闭tmux的鼠标模式,可以考虑设置快捷键

PS:同理vim下的鼠标模式也应视情况打开




