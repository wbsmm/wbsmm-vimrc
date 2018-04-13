# 某些插件有改动不能直接用其版本,所以是fork的方式

## 官方的PHP indent(缩进)插件
当打开缩进功能, 打开大php文件(上万行)会出现语法高亮消失问题. /(ㄒoㄒ)/~~
调试了很久才发现原因.

> "	This script sets the option php_sync_method of PHP syntax script to 0
  "	(fromstart indenting method) in order to have an accurate syntax.
  "	If you are using very big PHP files (which is a bad idea) you will
  "	experience slowings down while editing, if your code contains only PHP
  "	code you can comment the line below.
  " let g:php_sync_method = 0

上面说得很清楚了,正好我只写php... 所以注掉这行配置`let g:php_sync_method = 0`
尝试过在vimrc设置`g:php_sync_method `但是都不行
