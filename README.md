# hijack-open-directory.nvim

Start your preferred filer when you open a directory like `nvim some_dir`.
Please disable the standard filer when using.

## Installation

### dein.vim

```vim
call dein#add('tomato3713/hijack-open-directory.nvim')
```

## Configuration

```lua
-- Disable the default filer plugin netrw
vim.api.nvim_set_var('loaded_netrwPlugin', 1)

-- Exapmle for vfiler.vim
-- Start VFiler when open directory
require('hijack_open_directory').setup({
    filer = function(path)
        -- callback function when open directory
        require('vfiler').start(path, {noremap = true, silent = true })
    end
})
```
