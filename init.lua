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
require('neoscroll').setup()
require'marks'.setup {
  mappings = {
    set_next = "m,",
    next = "m]",
    preview = "m:",
    set_bookmark0 = "m0",
    prev = false -- pass false to disable only this default mapping
  }
}
require("fidget").setup {
  -- options
}
require('osc52').setup {
  max_length = 0,      -- Maximum length of selection (0 for no limit)
  silent     = false,  -- Disable message on successful copy
  trim       = false,  -- Trim surrounding whitespaces before copy
}
vim.cmd[[colorscheme tokyonight]]
