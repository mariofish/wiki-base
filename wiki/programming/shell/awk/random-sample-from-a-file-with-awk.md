# Snippet: Random sample from a file with awk

```shell
awk 'BEGIN {srand()} !/^$/ { if (rand() <= .01) print $0}'
```
