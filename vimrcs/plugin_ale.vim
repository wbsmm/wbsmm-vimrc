" ale 插件 替换掉synatistic 插件，之前的能明显感觉到卡顿。ale利用vim8的异步job，速度很大提升
" Set this. Airline will handle the rest. PS:lightline也可以配,airline把剩下的都帮你做了
let g:airline#extensions#ale#enabled = 1
" 默认保存文件是会执行的, 打开下面配置表示只有保存才会执行.
"let g:ale_lint_on_text_changed = 'never'
" 打开文件不执行
"let g:ale_lint_on_enter = 0

let g:ale_sign_error = '❌' 
let g:ale_sign_warning = '❗️'

" linters都要自己装的，并且得确保在终端下能正常使用。看实际运行情况linter用 `:ALEInfo`命令

" python 只使用flake8检查风格,pylint 太严了(变量名),其它未用过
" php 不启用ale,上万行php明显卡顿(几千行的问题)这是airlinec插件的原因,而且也不可能对别人的代码ALEFix
let g:ale_linters = {
\   'python': ['flake8'],
\   'php': [''],
\ }
let g:ale_python_flake8_options = '--max-line-length=120'
" Fix就用这两个, isort用于处理头文件
let g:ale_fixers = {'python': ['autopep8','isort']}
" --aggressive 允许非空格修改 每行最长设置为120,因为Intellij的就是120.默认79太少了
let g:ale_python_autopep8_options = ' --aggressive --aggressive  --max-line-length 120 '
" isort没有这参数option选项 算了
"let g:ale_python_isort_options = ' -a "from __future__ import print_function" -d '

nmap <F8> <Plug>(ale_fix)
