# ycm插件替代

ycm插件太重了,这个分支只是替换ycm插件.我的公司虚拟机系统版本过旧,空间和内存也比较少,无法安装ycm插件.
根据文档,其包含了下面几个插件支持

### clang_complete(https://github.com/Rip-Rip/clang_complete)
暂时不安装,其实就是由于最新的clang装不上才导致的

### AutoComplPop(https://github.com/vim-scripts/AutoComplPop)
默认配置

### [Supertab](https://github.com/ervandew/supertab)

`:help supertab`
    
### [neocomplete](https://github.com/Shougo/neocomplete.vim) 
neocomplcache已不再维护.
vim需要lua支持.
只在默认配置处添加
`autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP`

这个是会对输入缓存,"自动"提示和补全.
支持目录

### [phpcomplete](https://github.com/shawncplus/phpcomplete.vim)
默认配置

这个其实是基于tags的补全,属于onmi补全的增强
[GUIDE.md](https://github.com/shawncplus/phpcomplete.vim/blob/master/GUIDE.md)

补全内置函数,手动触发
<ctrl-x><ctrl-o> 补全
CTRL+n  CTRL+p 上下选择
<tab>键补全
`:only`只保留当前窗口,用来关闭上面的提示窗口

更好的tags工具
[Getting-better-tags](https://github.com/shawncplus/phpcomplete.vim/wiki/Getting-better-tags)
`ctags -R --fields=+aimlS --languages=php `,命名空间有问题.不过当前对我来说够用了.

[https://github.com/vim-php/phpctags](https://github.com/vim-php/phpctags) 
一个纯PHP实现的phpctags项目

PS:当前这几种ctags使用上并未感觉到区别.