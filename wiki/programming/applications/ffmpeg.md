# ffmpeg

## Download m3u8 file with ffmpeg

```shell
ffmpeg -user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/601.7.8 (KHTML, like Gecko) Version/9.1.3 Safari/537.86.7" -i "url_to_m3u8.m3u8" -c copy /path/to/output.mkv
```

## Make GIF

```shell
# convert to png
ffmpeg -i /path/to/src.mov -vf scale=1024:-1 -r 10 output/ffout%3d.png
# convert to gif
convert -delay 8 -loop 0 output/ffout*.png output/animation.gif
# optimize gif
gifsicle animation.gif --optimize=3 --delay=3 > out.gif
```
