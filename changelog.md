
# 2018-04 重构开发
这个月由于写python,发现原本用于php的配置存在一些问题,加之发现了一些更好的插件,
所以进行了重构开发.脚本,配置和文档都进行了重新整理

主要改动有以下:
1. 原先的插件管理器从Vundle替换成pathogen. pathogen更符合我需要自定义的需求
2. syntastic替换成ale,对python和php做了配置. ale利用vim8的异步任务,速度提升很大
3. lightline替换成airline. airline已经帮你写好对接其它插件的脚本了
4. 增加自己的vim帮助文档,实现cheat功能