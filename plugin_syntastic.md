# syntastic

# 说明
默认不做任何配置,`:w`就会提示语法错误(会导致fatal error的).

`:help syntastic` 本文主要的参考资料 [syntastic.txt](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic.txt)

`:Errors` 打开错误列表
`:lclose` 关闭错误列表

`:SyntasticCheck` 手动触发检查
`:lnext``:lprevious`错误之间跳转
`::SyntasticInfo` 查看当前文件已使用的checker

# 进一步配置 php

## 需求

刚接触php,容易犯些错误,如变量忘记`$`.不算语法错误,只是在运行时php可能报警告.  但我更想运行前就把错误提示出来.

## syntastic-checkers
syntastic 是通过
(syntastic-checkers)[https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt]
来实现的.
https://github.com/vim-syntastic/syntastic/wiki/Syntax-Checker-Guide


https://github.com/tpope/vim-unimpaired