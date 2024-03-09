-- treesitter setup
require('nvim-treesitter.configs').setup {
    ensure_installed = "all",
    highlight = {
        enable = true
    },
    indent = {
        enable = true;
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<leader><space>",
            node_incremental = "<leader><space>",
            scope_incremental = false,
            node_decremental = "<bs>"
        }
    }
}
