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

### [phpcomplete](https://github.com/shawncplus/phpcomplete.vim)
默认配置
