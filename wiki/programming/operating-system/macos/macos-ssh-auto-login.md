# macOS 下 ssh 避免多次输入密码

编辑文件：

```shell
sudo vim /etc/ssh_config
```

加入：

```shell
Host *
ControlMaster auto
ControlPath ~/.ssh/master-%r@%h:%p
```

保存后，重新启动终端即可生效。
