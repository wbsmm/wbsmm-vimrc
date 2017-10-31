#phptags
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php'
#ctags -R --fields=+aimlS --languages=php
# 使用phpctags https://github.com/vim-php/phpctags

# tmuxcopytolocal 见tmux.md和clipboard.md
# alias tmuxcopytolocal='tmux save-buffer - | ssh local pbcopy'

alias ll='ls -alh'

# xclip 如果有的话
# alias xclip='xclip -sel clip'


# find和grep实现的find-in-path.  加-i忽略大小写
alias finderphp='find . -name "*.php" | xargs grep  --color'

# find . -type f