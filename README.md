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
Run ```nvim``` and ```:Packersync``` and wait for the plugins to be installed.

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
