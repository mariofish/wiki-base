# Neovim Lua

## Neovim API

- nvim_echo
```lua
vim.api.nvim_echo({{'hello', 'healthError'}, {'world'}}, true, {})
```

## System

- current working directory
```lua
local cwd = vim.fn.expand('%:p:h')
```

## Buffer

- get current buf path
```lua
vim.api.nvim_buf_get_name(0)
```

- get lines
```lua
local line = vim.api.nvim_buf_get_lines(bufnr, 1, -1, false)
```

## Window

```lua
-- 0 is current window
vim.fn.winwidth(0)
vim.fn.winheight(0)
```

## Metatable Tricks

- require automatically by access module property
```lua
local go = setmetatable({}, {
    __index = function(t, k)
        local ok, val = pcall(require, string.format('go.%s', k))
        if ok then
            rawset(t, k, val)
        end

        return val
    end
})
```
