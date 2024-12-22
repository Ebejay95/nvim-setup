local keymap = vim.keymap.set

-- Telescope
keymap('n', '<C-p>', "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
keymap('n', '<leader>fg', "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
keymap('n', '<leader>fb', "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
keymap('n', '<leader>fh', "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })

-- Neotree
keymap("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
keymap("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- Language Servers
keymap('n', 'K', vim.lsp.buf.hover, {})
keymap('n', 'gd', vim.lsp.buf.definition, {})
keymap({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- Formatters
keymap('n', '<leader>gf', vim.lsp.buf.format, {})

-- Tests
keymap("n", "<leader>t", ":TestNearest<CR>", {})
keymap("n", "<leader>T", ":TestFile<CR>", {})
keymap("n", "<leader>a", ":TestSuite<CR>", {})
keymap("n", "<leader>l", ":TestLast<CR>", {})
keymap("n", "<leader>g", ":TestVisit<CR>", {})

-- Git
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- navigation
keymap("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", {})
keymap("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", {})
keymap("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", {})
keymap("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", {})