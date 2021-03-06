# Which process is using swap on Linux?

```shell
for file in /proc/*/status ; do awk '/VmSwap|Name/{printf $2 " " $3}END{ print ""}' $file; done | sort -k 2 -n -r | less
```

Details at: [https://www.cyberciti.biz/faq/linux-which-process-is-using-swap/](https://www.cyberciti.biz/faq/linux-which-process-is-using-swap/)
