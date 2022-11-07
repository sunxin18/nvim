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
keymap("n","A<up>", ":resize -2<CR>", opts)
keymap("n", "A<down>", ":resize +2<CR>", opts)
keymap("n", "A<left>", ":vertical resize -2<CR>", opts)
keymap("n", "A<right>", ":vertical resize +2<CR>", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "H", "5h", opts)
keymap("n", "J", "5j", opts) 
keymap("n", "K", "5k", opts)
keymap("n", "L", "5l", opts)
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

-- delete cur buffer
keymap("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- nerdtree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<Leader>v", ":NvimTreeFindFile<CR>", opts)

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
vim.cmd [[
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope search_history<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles<cr>
nnoremap <leader>fs <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>fS <cmd>Telescope lsp_workspace_symbols<cr>


nnoremap <leader>df <cmd>Telescope dir find_files<cr>
nnoremap <leader>dg <cmd>Telescope dir live_grep<cr>


]]
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope search_history<cr>", opts)
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap("n", "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)
keymap("n", "<leader>fp", "<cmd>lua require'telescope'.extensions.project.project{}<CR>", opts)

keymap("n", "<leader>df", "<cmd>Telescope dir find_files<cr>", opts)
keymap("n", "<leader>dg", "<cmd>Telescope dir live_grep<cr>", opts)
-- tabbar
--
keymap("n", "T", ":TagbarToggle", opts)
-- easyemotio
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
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gr", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- git
--

keymap("n", "<Leader>gp", "<cmd>DiffviewFileHistory<CR>", opts)
