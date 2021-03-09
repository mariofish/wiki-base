# Shell Snippets

```shell
# gdb
gdb -c core_file bin_file

# text deduplication
sort filename|uniq -c > newfile

# show exit status
echo $?

# get timestamp
date +%s

# grep whole word
grep -w xxx

# human readable size
ls -lh

which
cat -n

# float number in bc
scale=2
```

## System Info

```shell
# All
uname -a

# host name
uname -n

# OS name
uname -s

# Kernel version
uname -r

# CPU info
cat /proc/cpuinfo

# resources

top
vmstat
iostat
mpstat
sar
df
htop
```
