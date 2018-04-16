

# 添加
```
git submodule add <仓库地址> <本地路径>
```
# 检出
克隆一个包含子仓库的仓库目录，并不会clone下子仓库的文件，只是会克隆下.gitmodule描述文件.
```
// 初始化
git submoudle init
// 更新
git submodule update

//组合 --recursive 是子仓库如果有子仓库一并拉取
git submodule update --init --recursive
```

# 删除
```
git rm --cached <本地路径>
```
PS:特别麻烦，容易出问题（不符合预期），尽量不要这个操作
注意本质上是以子仓库的commitid标记这个文件
# 拉取最新
```
子仓库
git pull
```

# 更新fork
[Configuring a remote for a fork](https://help.github.com/articles/configuring-a-remote-for-a-fork/)
```
git remote -v
git remote add upstream https://github.com/ORIGINAL_OWNER
```
[Syncing a fork](https://help.github.com/articles/syncing-a-fork/)
```
git fetch upstream
git checkout master
git merge upstream/master
```
PS: 这是git仓库有多个远程库的工作方式.
