# 光标

## vim的光标
默认是个方块,不是很习惯.
macvim在normal模式下是方块,但是插入是竖线而且背景色是绿色.

google了以下. 终端下vim的光标与终端自身有关系.
gvim可以自己设置光标`:help guicursor`

[http://vim.wikia.com/wiki/Configuring_the_cursor](http://vim.wikia.com/wiki/Configuring_the_cursor)
不过里面对

### mac终端
google了一下,似乎不支持vim定制
只能修改终端自身光标Terminal>Preferences>Profiles>Text>Cursor

 
### iterm2
google到的一个不错配置, 无论本地 远程 还是有无tmux表现都一致.
正常模式方块,插入模式竖线加行下划线. 但是更近一步的颜色修改,光标闪烁没找到好的方案

```
" 光标形状
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" 进入插入模式 编辑行会有下划线
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
```

