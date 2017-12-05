# 安装[youcompleteme](https://github.com/Valloric/YouCompleteMe#full-installation-guide)插件.

## 步骤
1. 使用Vundle`Plugin Valloric/YouCompleteMe`下载(**下载可能很久**)

2. 准备编译环境
mac下使用`brew install cmake`就行
ubuntu `sudo apt-get install build-essential cmake` `sudo apt-get install python-dev python3-dev`
3. 执行安装脚本
    `cd ~/.vim/bundle/YouCompleteMe`
    `./install.py `可选择对应的语言参数 如`--clang-completer`支持c风格语言(PS:**会下载clang时间有点长**)
    
4. phptags
默认没有php的语义,但其内置了neocomplcache.所以可用tags.

安装ctags工具`brew install ctags` ` apt-get install exuberant-ctags` 
在工程目录下`ctags -R` 另外vim的目录也在工程目录即可

phptags生成
`~/.ctags`中

```
--regex-php=/^[ \t]*[(private|public|static)( \t)]*function[ \t]+([A-Za-z0-9_]+)[ \t]*\(/\1/f, function, functions/
--regex-php=/^[ \t]*[(private|public|static)]+[ \t]+\$([A-Za-z0-9_]+)[ \t]*/\1/p, property, properties/
--regex-php=/^[ \t]*(const)[ \t]+([A-Za-z0-9_]+)[ \t]*/\2/d, const, constants/
```
bashrc中
`alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php'`

PS:c c++
```
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q .
ctags -R --c-kinds=+px --c++-kinds=+px --fields=+iafksS --extra=+qf /usr/include/*
```

    
    
    

## ubuntu14.04 debian安装ycm遇到的问题

###1 vim版本太低

见[vim8.md](vim8.md)

###2 Cmake版本过低
编译安装,注意先卸载已有的.

###3 cmake 命令
```
CMake Error: Could not find CMAKE_ROOT !!!
CMake has most likely not been installed correctly.
Modules directory not found in
/usr/bin

段错误 (核心已转储)
```
 忘了`apt-get remove cmake`的原因, 卸载掉重新安装即可

###4 不支持C++11
执行install.py脚本时
```
CMake Error at CMakeLists.txt:217 (message):
  Your C++ compiler does NOT fully support C++11.
```
https://github.com/Valloric/YouCompleteMe/issues/2596
手动[编译安装gcc](gcc.md) 然后指定CXX执行,
`CXX=~/gcc-7.1.0/bin/c++ ./install.py --build-dir /tmp/ycm_build`,(**加builddir才能看到日志**) 编译会报错
日志里显示
`c++: error: unrecognized command line option '-Wthread-safety'; did you mean '-fthread-jumps'`

简单了解了下-Wthread-safety 这个参数好像是clang的,把CXX换成clang++就可以了
`CXX=clang++-3.5 ./install.sh  --clang-completer`

###5 CXX 换成clang但clang只有3.0,又报不支持C++11的错
由于系统版本Debian太老,apt-get无法获取最新版考虑编译安装

http://llvm.org/docs/GettingStarted.html#requirements
但是公司给的虚拟机磁盘只有4G多 而这个`A full build of LLVM and Clang will need around 15-20 GB of disk space.`
所以只能选择放弃

需要gcc4.8
```
wget https://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2
wget https://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2.sig
wget https://ftp.gnu.org/gnu/gnu-keyring.gpg
signature_invalid=`gpg --verify --no-default-keyring --keyring ./gnu-keyring.gpg gcc-4.8.2.tar.bz2.sig`
if [ $signature_invalid ]; then echo "Invalid signature" ; exit 1 ; fi
tar -xvjf gcc-4.8.2.tar.bz2
cd gcc-4.8.2
./contrib/download_prerequisites
cd ..
mkdir gcc-4.8.2-build
cd gcc-4.8.2-build
$PWD/../gcc-4.8.2/configure --prefix=$HOME/toolchains --enable-languages=c,c++
make -j$(nproc)
make install
```

