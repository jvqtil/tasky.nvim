# Tasky.nvim
[NeoVim](https://github.com/neovim/neovim) plugin for [tasky](https://github.com/jvqtil/tasky)

# Install
#### First, install tasky itself, plugin uses it's binary from your `$PATH`
### [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'jvqtil/tasky.nvim'
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    "jvqtil/tasky.nvim"
},
```

# Commands
`:Tasky` - prints tasks list (runs `tasky` in shell)

`:Tasky add` - add a new task

`:Tasky done` - done (remove) a task
