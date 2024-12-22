local keymap = vim.keymap.set

-- Telescope
keymap('n', '<C-p>', "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
keymap('n', '<leader>fg', "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
keymap('n', '<leader>fb', "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
keymap('n', '<leader>fh', "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })

-- Neotree
keymap('n', '<C-n>', "<cmd>Neotree filesystem reveal left<CR>", {})

-- Language Servers
keymap('n', 'K', vim.lsp.buf.hover, {})
keymap('n', 'gd', vim.lsp.buf.definition, {})
keymap({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})