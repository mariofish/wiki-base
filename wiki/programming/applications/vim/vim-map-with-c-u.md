# vim: map with `c-u`

In Cmd mode, `c-u` denotes "Remove all characters between the cursor position and the beginning of the line."

When in Visual mode, pressing `:` inserts the range:

```viml
:'<,'>
```

Mappiing with `c-u` remove the range and execute the following command:

```viml
nnoremap foo :<C-u>bar
```
