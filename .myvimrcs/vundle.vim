"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  来自vim Vundle的配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 几种安装方式 但一般vim官网上的都会在github上有个仓库
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'


" 目录树和文件
" NERD 和gitflag支持
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" MRU 最近最长使用文件窗口
Plugin 'vim-scripts/mru.vim'

" 语法检查
Plugin 'vim-syntastic/syntastic'

" 查找文件
Plugin 'kien/ctrlp.vim'


" 查找文件内容 idea的 find-in-path. 需要先安装ack工具
Plugin 'mileszs/ack.vim'

" peaksea 主题
Plugin 'vim-scripts/peaksea'

" 为了修复php大文件语法高亮问题,自己fork的官方插件
Plugin 'silicon621600/PHP-Indenting-for-VIm'

" Plugin 'dracula/vim'
" Plugin 'crusoexia/vim-dracula'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'tomasr/molokai'

" Plugin 'nanotech/jellybeans.vim'





" 语言支持
" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


" 配置vim底部的状态行
Plugin 'itchyny/lightline.vim'

" VCS 显示改动
Plugin 'mhinz/vim-signify'

" 代码提示 自动补全 函数变量声明跳转
" ycm需要根据github文档安装,还需要编译的步骤
Plugin 'Valloric/YouCompleteMe'
" ycm没有php的语义,但其内部集成了补全插件,可以使用ctags实现补全
" 当前只是简单的添加了几条规则 并起了个phptags的别名
" github上有vim-php/phpctags 和 vim-php/tagbar-phpctags.vim 项目


" ycm插件替换 都是补全插件 neocomplete需要lua支持
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'ervandew/supertab'
"Plugin 'vim-scripts/AutoComplPop'
"Plugin 'shawncplus/phpcomplete.vim'


" eclipse中的outline idea中的structure.需要ctags.
Plugin 'majutsushi/tagbar'

" 代码快捷生成 如for循环块,if语句块等 idea 中的generate code 功能
" honza/vim-snippets 对我来说不是必要功能 暂时不开启.


" reformat code,optimise import;
" auto-indent(缩进);
" 使用indent工具 `:!index %`
" Quick way to fix PHP indentation in vim is to visually select the lines you want to work with using shift-v, and then press equals (=) to trigger auto-formatting.
" `gg=G` `ggvG`


" TODO:快捷注释;
" 文档;
" find usage;
" refactor-rename; vim-multiple-cursors sublime多光标编辑



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
