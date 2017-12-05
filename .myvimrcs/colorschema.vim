" 设置主题

" peaksea主题是有light版本的
set background=dark
colorscheme peaksea



"尝试解决大文件语法高亮问题,已解决 php-indent插件的let g:php_sync_method=0要注掉
"let g:php_sync_method=9000
"autocmd BufEnter * :syntax sync fromstart

" 下面网址列出常用的xterm256色配置
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" https://github.com/guns/xterm-color-table.vim

" PS:当前重置background的话 又会恢复默认设置;但是我只用黑色的
" 设置光标所在行
if &t_Co==256
    autocmd ColorScheme * hi CursorLine   ctermbg=236  cterm=NONE guibg=#303030 gui=NONE
endif
autocmd ColorScheme * hi CursorLine   guibg=#303030 gui=NONE

" 设置注释斜体 当前只有gvim 终端配置有点麻烦 见https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
autocmd ColorScheme * hi Comment	gui=italic




"显示term vim和gvim拥有的颜色的 term vim 只有16色
" Color test: Save this file, then enter ':so %'
" Then enter one of following commands:
"   :VimColorTest    "(for console/terminal Vim)
"   :GvimColorTest   "(for GUI gvim)
function! VimColorTest(outfile, fgend, bgend)
  let result = []
  for fg in range(a:fgend)
    for bg in range(a:bgend)
      let kw = printf('%-7s', printf('c_%d_%d', fg, bg))
      let h = printf('hi %s ctermfg=%d ctermbg=%d', kw, fg, bg)
      let s = printf('syn keyword %s %s', kw, kw)
      call add(result, printf('%-32s | %s', h, s))
    endfor
  endfor
  call writefile(result, a:outfile)
  execute 'edit '.a:outfile
  source %
endfunction
" Increase numbers in next line to see more colors.
command! VimColorTest call VimColorTest('vim-color-test.tmp', 12, 16)

function! GvimColorTest(outfile)
  let result = []
  for red in range(0, 255, 16)
    for green in range(0, 255, 16)
      for blue in range(0, 255, 16)
        let kw = printf('%-13s', printf('c_%d_%d_%d', red, green, blue))
        let fg = printf('#%02x%02x%02x', red, green, blue)
        let bg = '#fafafa'
        let h = printf('hi %s guifg=%s guibg=%s', kw, fg, bg)
        let s = printf('syn keyword %s %s', kw, kw)
        call add(result, printf('%s | %s', h, s))
      endfor
    endfor
  endfor
  call writefile(result, a:outfile)
  execute 'edit '.a:outfile
  source %
endfunction
command! GvimColorTest call GvimColorTest('gvim-color-test.tmp')