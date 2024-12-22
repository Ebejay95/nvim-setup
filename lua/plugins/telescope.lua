return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-n>"] = require('telescope.actions').move_selection_next,
                        ["<C-p>"] = require('telescope.actions').move_selection_previous,
                    },
                },
            },
        })
    end
}