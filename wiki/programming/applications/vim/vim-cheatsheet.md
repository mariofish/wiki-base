# VIM Cheatsheet

## File

- `:e` edit
- `:w` write
- `:q` quit

## Mode

- `v` visual
- `V` visual line
- `c-v` visual block

## Editing

- `i` insert before
- `I` insert at the head of line
- `gi` insert to last editing place
- `gI` insert in column 1
- `a` insert after
- `A` insert at the end of line
- `o` insert next line
- `O` insert previous line
- `r` replace
- `x` erase
- `s` erase and enter “i” mode
- `u` undo
- `U` undo all
- `c-r` redo
- `~` switch case
- `c-a` add number
- `c-x` subtract number
- `<` left indent
- `>` right indent
- `=` syntax indent
- `J` remove newline char
- `.` repeat last command

## Editing w/ Motion

### Commands

- `c` correct
- `d` delete
- `y` yank \(copy\)
- `gu` to lower
- `gU` to upper

### Preposition

- `i` inner
- `a` “a”
- `t` till

### Objects

- `w` word
- `s` sentence
- `p` paragraph
- `t` tag block
- `[` `(` `{` parentheses
- `b` “\(“block
- `B` “{“block
- `<` `>` `”` `'`

### Shortcuts

- `cc` correct line
- `dd` delete line
- `C` correct all after cursor
- `D` delete all after cursor

## Editing

- `c-a` last inserted text
- `c-n` next word
- `c-p` previous word
- `c-x c-]` tag completion
- `c-x c-f` file completion
- `c-x c-l` line completion
- `c-x c-p` `c-x c-n` context-aware word completion
- `c-x c-o` language-aware completion
- `c-u` erase line
- `c-w` erase word

## Moving

- `h` left
- `j` down
- `k` up
- `l` right
- `w` word
- `b`
- `e`
- `ge`
- `gE`
- `^`
- `$`
- `gg`
- `G`
- `%`
- `fx` `Fx`
- `tx` `Tx`
- `[` `]`
- `{` `}`

## Scrolling

- `z.` cursor move as center
- `zt` cursor move as top
- `zb` cursor move as bottom
- `c-u` scroll up one page
- `c-f` scroll down one line
- `c-y` scroll up one page
- `c-e` scroll down one line

## Searching/Replacing

- `#` search currenct word
- `/` search input word
- `?` search input word from bottom
- `/<xxx/>` match whole word of “xxx”
- `%/s/src/dst` replace “src” with “dst”
- `%/s/src/dst/g` replace all “src” with “dst”
- `%/s/src/dst/c` replace “src” with “dst”, with confirmation

## Buffers

- `bdelete`
- `bNext` `bprevious`

## Tabs/Windows

- `split` `vsplit`
- `c-w r` swap window
- `c-w h` `c-w j` `c-w k` `c-w l` move cursor
- `tabedit` edit with tab
- `gt` next tab
- `gT` previous tab

## Quickfix/Location

- `copen` `lopen`
- `cNext` `cprevious`
- `cclose`

## Macro

- `qa` record "a" macro
- `@a` execute "a" macro

## `g` Commands

- `g C-g` count words
- `ga` ASCII code
- `g8` print hex value in UTF-8
- `g?` Rot13 encoding
- `gd` `gD` go to definition
- `gm` go to middle of screen line
- `gM` go to middle of text line
- `gs` go to sleep

## Tricks

- `%s/\s\+$//` remove trailing spaces
- Add comment to multiple lines:
  - Select with `c-v`
  - `I`
  - Input comment, e.g. `//` or `#`
  - `ESC`

## Shell

- `!sh echo $PATH` execute shell
- `read /path/to/file` read a file
- `read !date` read a date
- `read !date +\%s` read a timestamp

## Session

- `mksession! /path/to/session.vim` make session
- `vim -S /path/to/session.vim` start with session

## References

- [https://www.fprintf.net/vimCheatSheet.html](https://www.fprintf.net/vimCheatSheet.html)
- [http://vimdoc.sourceforge.net/htmldoc/motion.html](http://vimdoc.sourceforge.net/htmldoc/motion.html)
- [https://georgebrock.github.io/talks/vim-completion/](https://georgebrock.github.io/talks/vim-completion/)
