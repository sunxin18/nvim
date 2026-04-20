-- nvim-tree requires these to be set before plugins load
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.gitsigns"
require "user.treesitter"
require "user.trouble"
require "user.aerial"
require "user.nvim-tree"
require "user.bufferline"
require "user.telescope"
require "user.utils"
require "user.diffview"
vim.cmd[[colorscheme tokyonight]]
