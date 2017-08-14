" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 自动更新错误列表
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" 本来打算更新php的语法校验,如:phpmd 可以用来控制代码行数,变量命名什么的.暂时需求不急.
" 我想要的是如:变量未设置便使用之类的能够提示. 还是php.ini把error_reporting改成E_ALL靠谱.