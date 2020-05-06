# vimfiles
Config files and plugins for vim.

## Getting Started

1. Create `~/.vimrc` to refer to here:
```vim
" Use forward slashes for portability, even on Windows.
set runtimepath+=/path/to/this/repo
source /path/to/this/repo/_vimrc
```
2. Building an appropriate `~/.gvimrc` differs for every system. Use `_gvimrc`
   as a starting point.

## Colors

These color schemes are included:
- darkblue2, modify stock darkblue.vim, set the `hi Visual` line to have `guibg=white`
  - makes highlighted text more readable
- solarized, see https://github.com/altercation/vim-colors-solarized
