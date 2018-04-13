""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
source ~/silicon-vimrc/plugin_common_non_forked/vim-pathogen/autoload/pathogen.vim
let s:vim_runtime = "~/silicon-vimrc"
call pathogen#infect(s:vim_runtime.'/plugins/colorschema/{}')
call pathogen#infect(s:vim_runtime.'/plugins/non_forked/{}')
call pathogen#infect(s:vim_runtime.'/plugins/forked/{}')
call pathogen#infect(s:vim_runtime.'/plugins/ycm/{}')
call pathogen#infect(s:vim_runtime.'/plugins/custom/{}')
call pathogen#helptags()
