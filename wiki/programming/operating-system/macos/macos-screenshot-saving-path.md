# macOS 截图修改保存路径

macOS 截图会默认保存在桌面上，我们可以通过下面的方法，设置默认的截图保存位置：

```shell
# /path/to/screenshot 是要设置的路径

defaults write com.apple.screencapture location /path/to/screenshot
killall SystemUIServer
```
