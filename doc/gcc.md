# 编译安装gcc


`wget http://www.netgull.com/gcc/releases/gcc-7.1.0/gcc-7.1.0.tar.gz`
`tar xzvf gcc-7.1.0.tar.gz`
`cd gcc-7.1.0`
`./contrib/download_prerequisites` 下载需要依赖的库
`cd ..`
`mkdir objdir`
`cd objdir`
`$PWD/../gcc-7.1.0/configure --prefix=$HOME/gcc-7.1.0 --enable-languages=c,c++ --disable-multilib` --disable-multilib是禁用32位.我的都是64位机器,默认没有32位的库 
`make` 报错可能是vps内存不足的原因(日志里有`libbackend.a: No space left on device`) ,重启机器.另外时间可能很久(小时级)
`make install`


`CXX=~/gcc-7.1.0/bin/c++ ./install.py --build-dir /tmp/ycm_build`