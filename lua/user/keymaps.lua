local opts = { noremap = true, silent = true } local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts) 

-- Resize with arrows
keymap("n", "<LEADER><up>", ":resize -2<CR>", opts)
keymap("n", "<LEADER><down>", ":resize +2<CR>", opts)
keymap("n", "<LEADER><left>", ":vertical resize -2<CR>", opts)
keymap("n", "<LEADER><right>", ":vertical resize +2<CR>", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "H", "5h", opts)
keymap("n", "J", "5j", opts) 
keymap("n", "K", "5k", opts)
keymap("n", "l", "5l", opts)
keymap("n", "Q", ":q<CR", opts)
keymap("n", "S", ":w<CR>", opts)

-- tab
keymap("n", "tu", ":tabe<CR>", opts)
keymap("n", "tU", ":tab split<CR>", opts)
keymap("n", "tn", ":+tabnext<CR>", opts)
keymap("n", "tp", ":-tabnext<CR>", opts)
-- Split window

keymap("n", "s", ":<nop>", opts)
keymap("n", "su", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
keymap("n", "sd", ":set splitbelow<CR>:split<CR>", opts)
keymap("n", "sl", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
keymap("n", "sr", ":set splitright<CR>:vsplit<CR>", opts)


-- nerdtree
keymap("n", "<LEADER>e", ":NERDTreeToggle<CR>", opts)
keymap("n", "<LEADER>v", ":NERDTreeFind<CR>", opts)

vim.cmd [[
let g:floaterm_keymap_new    = '<Leader>tm'
let g:floaterm_keymap_prev   = '<Leader>tp'
let g:floaterm_keymap_next   = '<Leader>tn'
let g:floaterm_keymap_toggle = '<Leader>tt'
]]

-- tomtom/tcomment_vim ====
vim.cmd [[
let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cn g>c
vmap <LEADER>cn g>
nmap <LEADER>cu g<c
vmap <LEADER>cu g<
]]
