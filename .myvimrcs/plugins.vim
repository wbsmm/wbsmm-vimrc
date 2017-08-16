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



" 设置主题
" jellybeans 本来就是dark的 而且可配置是否使用终端背景
" set background=dark
colorscheme jellybeans
