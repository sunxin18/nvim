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

## Keymaps

> Leader key = `Space`

### General

| Action | Mode | Key |
| --- | --- | --- |
| Escape to Normal | Insert | `jk` |
| Save file | Normal | `S` |
| Quit | Normal | `Q` |
| Save and exit all | Normal | `ZZ` |

### Window

| Action | Mode | Key |
| --- | --- | --- |
| Move to left window | Normal | `Ctrl+h` |
| Move to right window | Normal | `Ctrl+l` |
| Move to upper window | Normal | `Ctrl+k` |
| Move to lower window | Normal | `Ctrl+j` |
| Resize window up | Normal | `Up` |
| Resize window down | Normal | `Down` |
| Resize window left | Normal | `Left` |
| Resize window right | Normal | `Right` |
| Split up | Normal | `<leader>su` |
| Split down | Normal | `<leader>sd` |
| Split left | Normal | `<leader>sl` |
| Split right | Normal | `<leader>sr` |

### Buffer / Tab

| Action | Mode | Key |
| --- | --- | --- |
| Next buffer | Normal | `R` |
| Prev buffer | Normal | `E` |
| Go to buffer 1-7 | Normal | `<leader>1` ~ `<leader>7` |
| Next buffer (leader) | Normal | `<leader>l` |
| Prev buffer (leader) | Normal | `<leader>h` |
| Delete current buffer | Normal | `<leader>d` |
| New tab | Normal | `tu` |
| New tab (split) | Normal | `tU` |
| Next tab | Normal | `tn` |
| Prev tab | Normal | `tp` |
| List tabs | Normal | `<leader>tl` |

### Navigation

| Action | Mode | Key |
| --- | --- | --- |
| Go to line start | Normal / Visual | `H` |
| Go to line end | Normal / Visual | `L` |
| Jump to 2 chars | Normal | `ss` (easymotion) |

### File Tree (nvim-tree)

| Action | Mode | Key |
| --- | --- | --- |
| Toggle nvim-tree | Normal | `<leader>e` |
| Find current file | Normal | `<leader>v` |

### Telescope

| Action | Mode | Key |
| --- | --- | --- |
| Find files | Normal | `<leader>ff` |
| Live grep | Normal | `<leader>fg` |
| Buffers | Normal | `<leader>fb` |
| Search history | Normal | `<leader>fh` |
| Recent files | Normal | `<leader>fr` |
| Document symbols | Normal | `<leader>fs` |
| Workspace symbols | Normal | `<leader>fS` |
| Project | Normal | `<leader>fp` |
| Resume last search | Normal | `<leader>fl` |
| Find files in dir | Normal | `<leader>df` |
| Live grep in dir | Normal | `<leader>dg` |

### LSP

| Action | Mode | Key |
| --- | --- | --- |
| Declaration | Normal | `gD` |
| Definition | Normal | `gd` |
| Hover | Normal | `gK` |
| Implementation | Normal | `gI` |
| References | Normal | `gr` |
| Open diagnostic float | Normal | `gl` |
| Format | Normal | `<leader>lf` |
| Code action | Normal | `<leader>la` |
| Rename | Normal | `<leader>lr` |
| Next diagnostic | Normal | `<leader>lj` |
| Prev diagnostic | Normal | `<leader>lk` |
| Signature help | Normal | `<leader>ls` |
| Diagnostic list | Normal | `<leader>lq` |
| Incoming calls | Normal | `<leader>in` |
| LSP info | Normal | `<leader>li` |

### Trouble (Diagnostics)

| Action | Mode | Key |
| --- | --- | --- |
| Toggle trouble | Normal | `<leader>xx` |
| Workspace diagnostics | Normal | `<leader>xw` |
| Document diagnostics | Normal | `<leader>xd` |
| Quickfix | Normal | `<leader>xq` |

### Terminal (floaterm)

| Action | Mode | Key |
| --- | --- | --- |
| New terminal | Normal | `<leader>tm` |
| Toggle terminal | Normal | `<leader>tt` |
| Next terminal | Normal | `<leader>tn` |
| Prev terminal | Normal | `<leader>tp` |

### Comment (tcomment)

| Action | Mode | Key |
| --- | --- | --- |
| Comment | Normal / Visual | `<leader>cn` |
| Uncomment | Normal / Visual | `<leader>cu` |

### Git

| Action | Mode | Key |
| --- | --- | --- |
| File history | Normal | `<leader>gh` |

### Other

| Action | Mode | Key |
| --- | --- | --- |
| Symbols outline | Normal | `T` |
| Copy via OSC (SSH) | Visual | `<leader>c` |
