""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
source ~/silicon-vimrc/plugin_common_non_forked/vim-pathogen/autoload/pathogen.vim
let s:vim_runtime = "~/silicon-vimrc"
call pathogen#infect(s:vim_runtime.'/plugin_forked/{}')
call pathogen#infect(s:vim_runtime.'/plugin_non_forked/{}')
call pathogen#infect(s:vim_runtime.'/plugin_ycm/{}')
call pathogen#infect(s:vim_runtime.'/plugin_custom/{}')
call pathogen#helptags()
