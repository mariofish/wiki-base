# Mac OSX 10.9 Mavericks 清除 DNS 缓存

```shell
dscacheutil -flushcache
sudo killall -HUP mDNSResponder
```
