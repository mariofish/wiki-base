# VIM Cheatsheet

## Open

- `vim /path/to/file +10` open with line number
- `vim /path/to/file +/pattern` open with pattern
- `vim -p file1 file2 ...` open with tab
- `vim -o file1 file2 ...` open with split
- `vim -O file1 file2 ...` open with vsplit

## File

- `:e` edit
- `:w` write
- `:q` quit
- `:noautocmd w` write without running autocommands

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
- `s` erase and enter insert mode
- `u` undo
- `U` undo all
- `c-r` redo
- `y` yank
- `p` paste
- `[range]copy.` `[range]t.` copy line 10 and paste
- `~` switch case
- `m` move line
- `c-a` add number
- `c-x` subtract number
- `<` left indent
- `>` right indent
- `=` syntax indent
- `J` remove newline char
- `.` repeat last command
- `changes` print change list
- `g;` `g,` jump change forward/backward

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

## Editing (Insert Mode)

- `c-a` last inserted text
- `c-n` next word
- `c-p` previous word
- `c-u` erase line
- `c-w` erase word
- `c-y` copy character above
- `c-e` copy character below
- `c-r` invoke register
- multiple lines editing, e.g. Add comment:
  - Select with `c-v`
  - `I`
  - Input comment, e.g. `//` or `#`
  - `Esc`

## Completion (Insert Mode)

- `c-x c-]` tag completion
- `c-x c-f` file completion
- `c-x c-l` line completion
- `c-x c-p` `c-x c-n` context-aware word completion
- `c-x c-o` language-aware completion

## Moving

- `h` left
- `j` down
- `k` up
- `l` right
- `w` word forward
- `b` word backward
- `e` forward to the end of word
- `ge` backward to the end of word
- `gE` backward to the end of WORD
- `0` first character of the line
- `^` first non-blank character of the line
- `$` last character of the line
- `gg` top of file
- `G` end of file
- `%` go to matched parentheses
- `fx` `Fx` find next x
- `tx` `Tx` find till next x
- `[[` `]]` section forward/backward
- `{` `}` paragraph forward/backward

## Scrolling

- `z.` cursor move as center
- `zt` cursor move as top
- `zb` cursor move as bottom
- `c-u` scroll up one page
- `c-f` scroll down one line
- `c-y` scroll up one page
- `c-e` scroll down one line

## Command

- `c-f` open command history
- `c-c` close command history

## Searching/Replacing

- `#` search currenct word
- `/` search input word
- `?` search input word from bottom
- `/<xxx/>` match whole word of “xxx”
- `%/s/src/dst` replace “src” with “dst”
- `%/s/src/dst/g` replace all “src” with “dst”
- `%/s/src/dst/c` replace “src” with “dst”, with confirmation
- `g/pattern/d` remove lines matching pattern
- `g!/pattern/d` remove lines that do NOT match pattern
- `v/pattern/d` remove lines that do NOT match pattern
- `%s/\s\+$//` remove trailing spaces
- `%s/pattern//n` count pattern occurance

## Buffers

- `bdelete`
- `bNext` `bprevious`

## Tabs/Windows

- `split` `vsplit`
- `c-w r` swap window right/down
- `c-w R` swap window left/up
- `c-w h` `c-w j` `c-w k` `c-w l` move cursor
- `c-w H` `c-w J` `c-w K` `c-w L` move window
- `c-w o` close all other windows
- `c-w f` split file under cursor
- `c-w H` change split [to](to) horizontal
- `c-w K` change split [to](to) vertical
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
- `gv` reselect visual
- `gn` next search pattern with visually selection
- `g8` print hex value in UTF-8
- `gw` format and wrap
- `gx` open with browser
- `g?` Rot13 encoding
- `gd` `gD` go to definition
- `gm` go to middle of screen line
- `gM` go to middle of text line
- `gs` go to sleep

## Batch Commands

- `bufdo`
- `tabdo`
- `cdo`
- `cfdo`
- `ldo`
- `lfdo`
- `argdo`

## Jumps

- `ctrl+]` jump to definition
- `ctrl+o` jump back

## Merge Conflicts

- `]n` go to next conflict marker
- `[n` go to previous conflict marker

## Others

- `ab` abbreviations
- `set scrollbind` scroll splits simultaneously

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
