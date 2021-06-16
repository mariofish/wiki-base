# vim: map with `c-u`

In Cmd mode, `c-u` denotes "Remove all characters between the cursor position and the beginning of the line."

When in Visual mode, pressing `:` inserts the range:

```viml
:'<,'>
```

Mapping with `c-u` removes the range and then executes the following command:

```viml
nnoremap foo :<C-u>bar
```

<https://vi.stackexchange.com/questions/9751/understanding-ctrl-u-combination>
