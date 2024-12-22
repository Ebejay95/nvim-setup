return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query", "javascript",
                "typescript", "html", "css", "scss", "json", "yaml",
                "toml", "python", "go", "rust", "java", "bash", "tsx",
                "svelte", "vue", "php", "dockerfile", "graphql",
                "markdown", "markdown_inline", "elixir", "heex"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}