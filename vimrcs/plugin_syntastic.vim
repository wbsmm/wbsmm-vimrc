"" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"" 自动更新错误列表
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0


" 本来打算更新php的语法校验,如:phpmd 可以用来控制代码行数,变量命名什么的.暂时需求不急.
" 我想要的是如:变量未设置便使用之类的能够提示. 还是php.ini把error_reporting改成E_ALL靠谱.

" ale 插件
" Set this. Airline will handle the rest. PS:lightline也可以配,airline把剩下的都帮你做了
let g:airline#extensions#ale#enabled = 1
" 默认保存文件是会执行的, 打开下面配置表示只有保存才会执行.
"let g:ale_lint_on_text_changed = 'never'
" 打开文件不执行
"let g:ale_lint_on_enter = 0


" linters都要自己装的，并且得确保在终端下能正常使用。看实际运行情况linter用 `:ALEInfo`命令
" 只使用flake8检查风格,pylint 太严了(变量名),其它未用过
let g:ale_linters = {'python': ['flake8']}
let g:ale_python_flake8_options = '--max-line-length=120'

" Fix就用这两个, isort用于处理头文件
let g:ale_fixers = {'python': ['autopep8','isort']}
" --aggressive 允许非空格修改 每行最长设置为120,因为Intellij的就是120.默认79太少了
let g:ale_python_autopep8_options = ' --aggressive --aggressive  --max-line-length 120 '

" isort没有这参数option选项 算了
"let g:ale_python_isort_options = ' -a "from __future__ import print_function" -d '

nmap <F8> <Plug>(ale_fix)
