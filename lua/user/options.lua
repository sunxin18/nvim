local options = {
    number = true,
    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    ignorecase = true,
    smartcase = true,
    mouse = "a",
    swapfile = false,                        -- creates a swapfile
    scrolloff = 8,                           -- keep 8 height offset from above and bottom
    sidescrolloff = 8,                       -- keep 8 width offset from left and right
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    timeoutlen = 500,                        -- time to wait for a mapped sequence to complete (in milliseconds)
    foldmethod = "expr",                     -- fold with nvim_treesitter
    foldlevel = 99,                          -- if not set this, fold will be everywhere
}
vim.cmd[[highlight LineNr guifg=red]]

vim.opt.shortmess:append "c"
for k, v in pairs(options) do
  vim.opt[k] = v
end

