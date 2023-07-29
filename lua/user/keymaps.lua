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
-- Better window navigation keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts) 

-- Resize with arrows
keymap("n", "<Up>", ":resize -2<CR>", opts)
keymap("n", "<Down>", ":resize +2<CR>", opts)
keymap("n", "<Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)
-- Navigate buffers
keymap("n", "<leader>l", ":bnext<CR>", opts)
keymap("n", "<leader>h", ":bprevious<CR>", opts)

keymap("n", "Q", ":q<CR>", opts)
keymap("n", "S", ":w<CR>", opts)

-- tab management
keymap("n", "tu", ":tabe<CR>", opts)
keymap("n", "tU", ":tab split<CR>", opts)
keymap("n", "tn", ":+tabnext<CR>", opts)
keymap("n", "tp", ":-tabnext<CR>", opts)

-- Split window
keymap("n", "<leader>s", ":<nop>", opts)
keymap("n", "<leader>su", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
keymap("n", "<leader>sd", ":set splitbelow<CR>:split<CR>", opts)
keymap("n", "<leader>sl", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
keymap("n", "<leader>sr", ":set splitright<CR>:vsplit<CR>", opts)

-- NOTE: E/R navigation needs  'bufferline' plugin
keymap("n", "R", ":BufferLineCycleNext<CR>", opts)
keymap("n", "E", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)

-- delete cur buffer
keymap("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- Press jl fast to enter
keymap("i", "jk", "<ESC>", opts)
-- exit whole program
keymap("n", "ZZ", ":lua require('user.utils').SaveAndExit()<cr>", opts)

-- nerdtree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<Leader>v", ":NvimTreeFindFile<CR>", opts)

-- floatterm
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


-- Find files using Telescope command-line sugar.
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope search_history<cr>", opts)
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap("n", "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)
keymap("n", "<leader>fp", "<cmd>lua require'telescope'.extensions.project.project{}<CR>", opts)
keymap("n", "<leader>fl", "<cmd>Telescope resume<cr>", opts)

keymap("n", "<leader>df", "<cmd>Telescope dir find_files<cr>", opts)
keymap("n", "<leader>dg", "<cmd>Telescope dir live_grep<cr>", opts)

keymap("n", "<leader>tl", "<cmd>Telescope telescope-tabs list_tabs<cr>", opts)

-- outline 
keymap("n", "T", "<cmd>SymbolsOutline<cr>", opts)
-- easyemotion
vim.cmd [[nmap ss <Plug>(easymotion-s2)]]

-- trouble 
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleTogle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gr", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- osyank
vim.keymap.set('v', '<leader>c', '<Plug>OSCYank')

-- git
keymap("n", "<Leader>gh", "<cmd>DiffviewFileHistory<CR>", opts)
