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

### 从本地粘贴格式混乱问题
具体表现为有换行符的自动添加, 缩进混乱

**在tmux中直接command+V 本质上是模拟键盘字符挨个输入.所以在vim的normal模式下也可能呢键入字符**
使用vim的paste模式
`:set paste`
`:set nopaste`
当前快捷键
`<leader>pp`

# 其它
`ctrl-b t` 显示时钟
`:source-file ~/.tmux.conf` 不重启加载配置
`tmux -V` 版本号
`tmux`  启动
`tmux kill-server`  关闭

# TODO 
1. Tmux Resurrect 保存会话(用于机器重启)
2. Tmate 向其它人分享会话
3. Tmuxinator 定义会话模板 简化创建过程. 例如:每次会话都是一个编辑器和一个shell窗口