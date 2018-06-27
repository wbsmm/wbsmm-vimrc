""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
source ~/wbsmm-vimrc/plugins/non_forked/vim-pathogen/autoload/pathogen.vim
let s:vim_runtime = "~/wbsmm-vimrc"
call pathogen#infect(s:vim_runtime.'/plugins/colorschema/{}')
call pathogen#infect(s:vim_runtime.'/plugins/non_forked/{}')
call pathogen#infect(s:vim_runtime.'/plugins/forked/{}')
call pathogen#infect(s:vim_runtime.'/plugins/ycm/{}')
call pathogen#infect(s:vim_runtime.'/plugins/custom/{}')
call pathogen#helptags()
