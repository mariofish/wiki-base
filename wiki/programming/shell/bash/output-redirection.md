# What is `2>&1` in Shell?

- File descriptor 1 is the standard output (`stdout`).
- File descriptor 2 is the standard error (`stderr`).
- `2>&1` means redirect `stderr` to `stdout`.
- Consider `>&` as redirect merger operator.

<https://stackoverflow.com/questions/818255/in-the-shell-what-does-21-mean>
