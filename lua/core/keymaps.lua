vim.g.mapleader = " "

local km = vim.keymap

-- telescope keybindings
km.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
km.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
km.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
-- search and replace all
km.set('n', '<Leader>rw', ':%s/<C-r><C-w>//g<Left><Left>', { noremap = true, silent = false })
-- C build & run
km.set('n', '<leader>r', ':!gcc % -o %:r && ./%:r<CR>', { noremap = true, silent = true })
-- error handling & go def
km.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
km.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
km.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
km.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
km.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')

--tab management
km.set("n", "<leader>to", ":tabnew<CR>")
km.set("n", "<leader>tx", ":tabclose<CR>")
km.set("n", "<leader>tn", ":tabn<CR>")
km.set("n", "<leader>tp", ":tabp<CR>")

-- nvim-tree
km.set("n", "<leader>ee", ":NvimTreeToggle<CR>")
km.set("n", "<leader>er", ":NvimTreeFocus<CR>")
km.set("n", "<leader>ef", ":NvimTreeFindFile<CR>")
