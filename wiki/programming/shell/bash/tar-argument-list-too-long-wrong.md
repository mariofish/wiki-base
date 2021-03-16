# tar: argument list too long wrong

也就是说 tar 参数太多了。解决方法是，通过列表文件：

```shell
find /path/to/crash_log/20131229 -name '*crash*' -print > /tmp/20131229.list
tar zcf /path/to/client_log/20131229.tar.gz --files-from /tmp/20131229.list
rm /tmp/20131229.list
```
