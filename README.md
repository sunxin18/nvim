# XNvim
This is personal neovim config.

## Preview
![all](https://github.com/sunxin18/sunxin18.github.io/raw/master/images/neovim/screenshot-20221203-220922.png)
![floaterm](https://github.com/sunxin18/sunxin18.github.io/raw/master/images/neovim/screenshot-20221203-221038.png)
![fg](https://github.com/sunxin18/sunxin18.github.io/raw/master/images/neovim/screenshot-20221203-221130.png)

## Try out this config
***Requires*** Neovim v0.8.0
```
git clone git@github.com:sunxin18/nvim.git ~/.config/nvim
```
Run ```nvim``` and ```:PackerSync``` and wait for the plugins to be installed.

## Setup

### 1. Install Nerd Font

Icons in nvim-tree require a Nerd Font. Install JetBrainsMono Nerd Font:

```bash
curl -L "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip" -o /tmp/JetBrainsMono.zip
unzip -o /tmp/JetBrainsMono.zip "*.ttf" -d ~/Library/Fonts/
```

Then set the font in your terminal:
- **iTerm2**: `Cmd + ,` → `Profiles` → `Text` → `Font` → select `JetBrainsMono Nerd Font`
- **Terminal.app**: `Shell` → `Preferences` → `Profiles` → `Text` → `Change Font`

### 2. Install Treesitter parsers

After PackerSync, open nvim and run:
```
:TSUpdate
```

### 3. tmux true color (if using tmux)

Add to `~/.tmux.conf`:
```
set -g default-terminal "tmux-256color"
set -ag terminal-overrides ",xterm-256color:RGB"
```

## Troubleshooting

### `[NvimTree] nvim-tree setup not called`

Make sure `init.lua` has these two lines at the very top (before any `require`):
```lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
```

### `module 'nvim-treesitter.configs' not found`

nvim-treesitter new versions renamed the module. Use `nvim-treesitter.config` (no trailing `s`) in `treesitter.lua`:
```lua
require'nvim-treesitter.config'.setup { ... }
```

### Icons not displaying (nvim-tree)

Terminal font is not set to a Nerd Font. Follow the Nerd Font setup steps above.

## Default Mappings
### General Mappings
| Action      | Mappings    |
| ----------- | ----------- |
| Leader key  | Space       |
| Escape key  | jk          |
| Resize window | Up/Down/Left/Right |

To see all mappings please refer to the keymaps.lua

### Nvim-Tree
| Action          | Mappings    |     
| -----------     | ----------- |
| Nvimtree toggle | Space + e   |

### Lsp Mappings
| Action          | Mappings    |     
| -----------     | ----------- |
| Definition      | gd          |
| References      | gr          |


For more details of the provided defaults for each plugin please refer to xxx.lua. For example, nvim-tree.lua.
