""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 安装的插件相关配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"YouCompleteMe智能补全工具 当前未安装任何语言所以注掉默认值是''
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息
"let g:ycm_confirm_extra_conf = 0
" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第 2 个字符开始补全
let g:ycm_min_num_of_chars_for_completion= 2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"定义快捷健补全
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>'] 使用默认值['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>'] 使用默认值['<S-TAB>', '<Up>']
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
"设置关健字触发补全
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.', ' ', '(', '[', '&'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_cache_omnifunc = 1
let g:ycm_use_ultisnips_completer = 1
"定义函数跟踪快捷健 需要安装对应语义才行
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>



" ctrlp 插件配置
set runtimepath^=~/.vim/bundle/ctrlp.vim



" ack.vim插件配置
" 如果存在ag则使用ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif



" majutsushi/tagbar插件配置
nmap <F9> :TagbarToggle<CR>


" lightline插件配置
" 只是把原本filename只显示文件名 换成relativepath(相对路径)
" 添加依赖于sygnify插件的状态栏
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'relativepath', 'modified', 'vcsstatus' ] ]
      \ },
      \ 'component_function':{
      \   'vcsstatus': 'My_sy_stats_wrapper'
      \   }
      \ }

function! My_sy_stats_wrapper()
      let symbols = ['+', '-', '~']
      let [added, modified, removed] = sy#repo#get_stats()
      let stats = [added, removed, modified]  " reorder
      let hunkline = ''

      for i in range(3)
        if stats[i] > 0
          let hunkline .= printf('%s%s ', symbols[i], stats[i])
        endif
      endfor

      if !empty(hunkline)
        let hunkline = printf('[%s]', hunkline[:-2])
      endif

      return hunkline
endfunction


" vim-signify 插件配置

" 我只接触过这两个VCS工具
let g:signify_vcs_list = [ 'git', 'svn' ]



" 既然不能像IDE那样实时保存  就不要任何自动保存功能
" 插入 正常模式 两次按键间自动更新标记(会写到磁盘)
"let g:signify_cursorhold_insert     = 1
"let g:signify_cursorhold_normal     = 1
" buffer修改时
"let g:signify_update_on_bufenter    = 0
" 获取焦点时 tmux里面的话还需要额外配置
"let g:signify_update_on_focusgained = 1


" 可视模式下快速选择
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
" 相比于ic会忽略空行 但是似乎有bug 我随便用文件测试git时会卡死
"omap ac <plug>(signify-motion-outer-pending)
"xmap ac <plug>(signify-motion-outer-visual)



