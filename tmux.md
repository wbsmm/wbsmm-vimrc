# tmux 笔记
## 说明
一个会话工具,主要解决ssh断开连接后任务继续执行.
也可实现工作保存的功能.

另外还有一个工具screen.看网上的比较,tmux更加新一点

主要参考这篇[博客](http://tangosource.com/blog/a-tmux-crash-course-tips-and-tweaks/)

# 按键
ctrl-b 前缀键 按住松开再加其它键实现功能
`man tmux` 和 `ctrl ?`
## 会话
新建会话
`tmux new -s <name-of-my-session>` new-session缩写
`ctrl-b new -s <name-of-my-new-session>`
关闭退出会话
exit 命令或者 [Ctrl+d] 组合键，退出 tmux 会把会话结束掉
分离和连接会话
`ctrl-b d` detach
`tmux a -t <目标会话名>` attach-session

除非显示关闭,否则在计算机关闭前会话都不会消失
`tmux ls` `ctrl-b s`列出会话
`tmux attach` 连接上次退出的会话
## 窗口 window

`ctrl-b c`创建窗口
`ctrl-b [数字]`切换窗口 `n`后 `p`前
`ctrl-b &` 	关闭当前窗口
`ctrl-b ,` 	重命名当前窗口；这样便于识别
## 分屏 pane
`ctrl-b % `竖直分割
`ctrl-b "` 水平分割
`ctrl-b 方向键`切换
`ctrl-b x` 	关闭当前面板
## 复制 粘贴vi风格
`set-window-option -g mode-keys vi`
1) `Control+b [` 进入复制模式
2) `Space` 开始选择
4) `Enter` 结束选择
5) `Control+b ]` 粘贴复制的


`tmux show-buffer`
`tmux save-buffer foo.txt`

`Control + b #`
`tmux list-buffers`

`tmux show-buffer -b [buffer序号]`
`tmux save-buffer -b [buffer序号] foo.txt`

### 从本机剪贴板往tmux粘贴格式混乱问题
具体表现为有换行符的自动添加, 缩进混乱

**在tmux中直接command+V 本质上是模拟键盘字符挨个输入.所以在vim的normal模式下也可能呢键入字符**
使用vim的paste模式
`:set paste`
`:set nopaste`
当前快捷键
`<leader>pp`

### 实现从远程机器tmux复制内容到本机mac剪贴板
`ssh -R 1234:localhost:22 remoteServer` remoteServer上开启1234端口, 发送到1234的数据会被**转发**到localhost(本地机器)的22端口(ssh服务端口)
`tmux save-buffer - | ssh -p 1234 localhost pbcopy` 通过1234端口连接本地的ssh服务
`bind C-c run "tmux save-buffer - | ssh -p 1234 localhost pbcopy"`
基于`tmux save-buffer - | ssh host pbcopy`
需要开启mac的ssh.系统偏好设置-共享. 还需要配置密钥登录 和一些安全选项.
PS:配置可用alias和~/.ssh/config简化

`ssh -R` 远程转发  简单的说就是在登录的机器上开启一个指定的端口,所有发送到这个端口的数据会自动转发到host:hostport这个地址中.
man文档
-R [bind_address:]port:host:hostport
 Specifies that the given port on the remote (server) host is to be forwarded to the given host and port on the local side.  This works by allocating a
 socket to listen to port on the remote side, and whenever a connection is made to this port, the connection is forwarded over the secure channel, and a
 connection is made to host port hostport from the local machine.

 Port forwardings can also be specified in the configuration file.  Privileged ports can be forwarded only when logging in as root on the remote machine.
 IPv6 addresses can be specified by enclosing the address in square braces.

 By default, the listening socket on the server will be bound to the loopback interface only.  This may be overridden by specifying a bind_address.  An
 empty bind_address, or the address ‘*’, indicates that the remote socket should listen on all interfaces.  Specifying a remote bind_address will only
 succeed if the server's GatewayPorts option is enabled (see sshd_config(5)).

 If the port argument is ‘0’, the listen port will be dynamically allocated on the server and reported to the client at run time.  When used together
 with -O forward the allocated port will be printed to the standard output.


 


# 其它
`ctrl-b t` 显示时钟
`:source-file ~/.tmux.conf` 不重启加载配置
`tmux -V` 版本号
`tmux`  启动
`tmux kill-server`  关闭

# TODO 
1. Tmux Resurrect  tmux-continuum保存会话(用于机器重启); 
2. Tmate 向其它人分享会话; 
3. Tmuxinator 定义会话模板 简化创建过程. 例如:每次会话都是一个编辑器和一个shell窗口
4. tmux-yank copy到系统剪贴板.
 .