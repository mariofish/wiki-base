# 为什么配置好了 GitHub SSH Key 之后还需要输密码？

在确保[可以正常连接](https://help.github.com/articles/testing-your-ssh-connection/)的情况下，应该是因为你的 Git 使用了 HTTPS 协议。

对于 macOS 用户，可以：

```shell
ssh-add -K ~/.ssh/id_rsa
```

修改或创建 `~/.ssh/config`：

```shell
Host *
UseKeychain yes
AddKeysToAgent yes
IdentityFile ~/.ssh/id_rsa
```

通用的方法是，对 git 远程地址进行切换，换成 SSH 协议：

```shell
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git
```
