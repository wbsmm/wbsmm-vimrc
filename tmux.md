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

## 分屏 pane
`ctrl-b % `竖直分割
`ctrl-b "` 水平分割
`ctrl-b 方向键`切换
# TODO 
1. 配置vi模式. 例如:粘贴复制不用鼠标
2. Tmate 向其它人分享会话
3. Tmuxinator 定义会话模板 简化创建过程. 例如:每次会话都是一个编辑器和一个shell窗口